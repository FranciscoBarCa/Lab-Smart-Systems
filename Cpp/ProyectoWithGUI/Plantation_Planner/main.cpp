#include <iostream>
#include <cmath>
#include "imgui.h"
#include "imgui_impl_dx9.h"
#include "imgui_impl_win32.h"

#include "imnodes/imnodes.h"
#include "implot/implot.h"
#include <d3d9.h>
#define DIRECTINPUT_VERSION 0x0800
#include <dinput.h>
#include <tchar.h>

// Aux includes
#include "boost/date_time/posix_time/posix_time.hpp"
#include "boost/date_time/gregorian/gregorian.hpp"

// Helpers includes
#include "helpers/CLog.hpp"
#include "helpers/CLogListenerConsole.hpp"
#include "helpers/CLogListenerFile.hpp"
#include "helpers/CSingleton.hpp"
#include "helpers/CError.h"

// Database includes
#include "dm-database/CDatabase.hpp"
#include "dm-database/CDatabaseExample.hpp"
#include "bananas/CDatabase4.h"
#include "bananas/CDatabaseBanana.h"

// Classes includes
#include "bananas/CEstate.h"
#include "bananas/CSector.h"
#include "bananas/CPipe.h"
#include "bananas/CValue.h"
#include "bananas/CActType.h"
#include "bananas/CActuator.h"

#include "./helpers/CTimeUtils.hpp"

#define CONFIG_PATH "config"
#define LOGS_PROPERTIES_FILE "logs.ini"



#define TIME_SCAN_CYCLE_S 10 // 15 min

static LPDIRECT3D9 g_pD3D = NULL;
static LPDIRECT3DDEVICE9 g_pd3dDevice = NULL;
static D3DPRESENT_PARAMETERS g_d3dpp = {};

bool CreateDeviceD3D(HWND hWnd);
void CleanupDeviceD3D();
void ResetDevice();
LRESULT WINAPI WndProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam);


int main()
{
    /*----------------------
    |  INIT GUI
     -----------------------*/
    WNDCLASSEX wc = {sizeof(WNDCLASSEX), CS_CLASSDC, WndProc, 0L, 0L, GetModuleHandle(NULL), NULL, NULL, NULL, NULL, _T("Plantation Planner"), NULL};
    ::RegisterClassEx(&wc);
    HWND hwnd = ::CreateWindow(wc.lpszClassName, _T("Plantation Planner"), WS_OVERLAPPEDWINDOW, 100, 100, 1280, 720, NULL, NULL, wc.hInstance, NULL);

    // Initialize Direct3D
    if (!CreateDeviceD3D(hwnd))
    {
        CleanupDeviceD3D();
        ::UnregisterClass(wc.lpszClassName, wc.hInstance);
        return 1;
    }
    /*----------------------
    |  INIT SQL CONNECTION
     -----------------------*/
    CDatabaseBanana dbObject;
    helpers::CTimeUtils ctu;
    try
    {

        CError::ReservaPool();

        //  ---------------------------- INIT RESOURCES  ----------------------------

        // Configure logs
        CLog log("log");

        if (!log.initializeParametersFromIniFile(CONFIG_PATH, LOGS_PROPERTIES_FILE))
        {
            std::cout << "ERROR reading database log in file: " << CONFIG_PATH << "/" << LOGS_PROPERTIES_FILE << std::endl;
            return 0;
        }
        log.println(boost::log::trivial::info, "Log initialized");

        CError::LiberaPool();

        uint64_t lastExecution = 0;

        // Show the window
        ::ShowWindow(hwnd, SW_SHOWDEFAULT);
        ::UpdateWindow(hwnd);

        // Setup Dear ImGui context
        IMGUI_CHECKVERSION();
        ImGui::CreateContext();
        ImGuiIO &io = ImGui::GetIO();
        ImGui::StyleColorsDark();
        ImPlot::CreateContext();
   
        ImNodes::CreateContext();

        ImGui_ImplWin32_Init(hwnd);
        ImGui_ImplDX9_Init(g_pd3dDevice);
      


        ImGui::PushStyleVar(ImGuiStyleVar_WindowRounding, 0.f);

        ImVec4 clear_color = ImVec4(0.45f, 0.55f, 0.60f, 1.00f);

        MSG msg;
        ZeroMemory(&msg, sizeof(msg));

        // List of shared pointers
        std::list<std::shared_ptr<CSector>> v_Sectors;
        std::list<std::shared_ptr<CPipe>> v_Pipes;
        std::list<std::shared_ptr<CActuator>> v_Actuators;
        std::list<std::shared_ptr<CSensor>> v_Sensors;
        std::list<std::shared_ptr<CValue>> v_Values;

        bool firstrun = true; // Flag to see if it is the first Update
        bool refreshFlag = false;
        /*----------------------
        |  SQL REQUESTS
         -----------------------*/
        while (msg.message != WM_QUIT)
        {

            //  ---------------------------- START SCAN CYCLE ----------------------------

            boost::posix_time::ptime execTime = boost::posix_time::second_clock::local_time();

            if (((helpers::CTimeUtils::seconds_from_epoch(execTime) - lastExecution) >= TIME_SCAN_CYCLE_S)|| refreshFlag)
            {
                v_Sectors.clear();
                v_Pipes.clear();
                v_Actuators.clear();
                v_Sensors.clear();
                v_Values.clear();
                refreshFlag = false;
                log.println(boost::log::trivial::trace, "Starting intelligence execution cycle");

                // ---------------------------- GET DATA FROM DB  ----------------------------

                // DDBB connection

                dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
                log.println(boost::log::trivial::trace, "Sincronizing the classes structure with the database");
                /*----------------------
                | Create Pipes and Sectors
                -----------------------*/

                // Add create the basic Pipe and sector objects
                dbObject.getSectors(v_Sectors);
                dbObject.getPipes(v_Pipes, v_Sectors);

                /*----------------------
                | Populate sensors and actuators
                -----------------------*/

                // Should be time(0) and time(0) - AMOUNT_TIME
                time_t from_fecha = helpers::CTimeUtils::getTimeTFromYMDHMS(2020, 1, 1, 0, 0, 0);
                time_t to_fecha = helpers::CTimeUtils::getTimeTFromYMDHMS(2023, 1, 1, 0, 0, 0);

                // Save the preassure also on a external object
                std::list<CValue *> pressure_list;

                // Add the sensors and actuators to the Sector object (get just values between two dates)
                for (std::shared_ptr<CSector> sector : v_Sectors)
                {
                    dbObject.getSectorSensors(v_Sensors, sector);
                    dbObject.getSectorActuators(v_Actuators, sector);
                }

                // Add the sensors and actuators to the Pipe object (get just values between two dates)
                for (std::shared_ptr<CPipe> pipe : v_Pipes)
                {
                    dbObject.getPipeSensors(v_Sensors, pipe);
                    dbObject.getPipeActuators(v_Actuators, pipe); // <- dentro llama a dbObject.getValue(int ActID, from_fecha, to_fecha)
                }

                time_t to = time(0);
                time_t from = to - 12 * 30 * 24 * 3600;

                log.println(boost::log::trivial::trace, "Class structure syncronized");
                dbObject.Desconectar();
            }

            /*----------------------
            |  PROCESS OF DATA & INTELLIGENCE
            -----------------------*/
            // For the intelligence we will close valves if there is a drop in pressure
            for (std::shared_ptr<CSector> sector : v_Sectors)
            {
                // See if sector has dropped in pressure
                if (sector.get()->DropInPressure(2.5))
                {
                    // Get the pipes that go to that sector
                    std::list<std::shared_ptr<CPipe>> v_PipesToSector;
                    if (findwithSector(sector, v_PipesToSector, v_Pipes))
                    {
                        // Get the other end of the pipe
                        for (std::shared_ptr<CPipe> pipe : v_PipesToSector)
                        {
                            std::shared_ptr<CSector> otherSector = pipe.get()->otherSector(sector);
                            if (otherSector.get()->DropInPressure(2.5))
                            {
                                //Update GUI
                                pipe.get()->hasLeak(true);
                                //Close valve (vector in strangecase there are multiple valves)
                                std::list<std::shared_ptr<CActuator>> valves = pipe.get()->getActuatorbyType("WATER VALVE");
                                for (std::shared_ptr<CActuator> valve : valves) {
                                    
                                    if (valve.get()->getLastValue().get()->getValue() != 0) {
                                        log.println(boost::log::trivial::info, "There is a leak at Pipe" + std::to_string(pipe.get()->getId()));
                                        dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
                                        dbObject.ComienzaTransaccion();
                                        dbObject.setActuator(0, valve.get(), time(0));
                                        dbObject.ConfirmarTransaccion();
                                        dbObject.Desconectar();
                                        refreshFlag = true;
                                    }
                                }
                            }
                        }
                    }
                }
                
                lastExecution = helpers::CTimeUtils::seconds_from_epoch(execTime);
            }
            // Actuate binary actuators
            for (std::shared_ptr<CSector> sector : v_Sectors)
            {


            }

            /*----------------------
            |  GUI INIT CODE
            -----------------------*/
            if (::PeekMessage(&msg, NULL, 0U, 0U, PM_REMOVE))
            {
                ::TranslateMessage(&msg);
                ::DispatchMessage(&msg);
                continue;
            }

            ImGui_ImplDX9_NewFrame();
            ImGui_ImplWin32_NewFrame();

            ImGuiIO &io = ImGui::GetIO();
            ImVec2 whole_content_size = io.DisplaySize;
            ImGuiWindowFlags flags = ImGuiWindowFlags_NoDecoration;

            ImGui::NewFrame();
            ImGui::SetNextWindowPos({0, 0});
            ImGui::SetNextWindowSize(whole_content_size);
            ImGui::Begin("ImguiTemplate", 0, flags);
            ImGui::Text("Estate Node Viewer");
            /*----------------------
            |  GUI DRAW CODE
            -----------------------*/
            ImGui::SameLine();
            refreshFlag = ImGui::Button("Refresh with database");
 
            //Esquema de Nodos
            ImNodes::BeginNodeEditor();
            // DRAW FOR EACH SECTOR IN THE NETWORK (using iterators)
            for (auto it = v_Sectors.begin(); it != v_Sectors.end(); ++it)
            {
                (*it)->draw();
                if (firstrun)
                {
                    ImVec2 pos = setSectorInGrid((*it)->get_id(), std::ceil(std::sqrt(v_Sectors.size())));
                    (*it)->setPos(pos);
                    ImNodes::SetNodeScreenSpacePos((*it)->get_id(), pos);
                }
            }
            // DRAW FOR EACH PIPE IN THE NETWORK (using iterators)
            for (auto it = v_Pipes.begin(); it != v_Pipes.end(); ++it)
            {
                (*it)->draw();
                if (firstrun)
                {
                    (*it)->setPipeInGrid();
                    ImNodes::SetNodeScreenSpacePos((*it)->get_GUIPipeId(), ImVec2((*it)->getInitialPos().x, (*it)->getInitialPos().y));
                }
            }
            firstrun = false;
            ImNodes::MiniMap(0.2f, ImNodesMiniMapLocation_TopRight);
            ImNodes::EndNodeEditor();
            ImGui::End();
            
            ImGui::EndFrame();

            g_pd3dDevice->SetRenderState(D3DRS_ZENABLE, FALSE);
            g_pd3dDevice->SetRenderState(D3DRS_ALPHABLENDENABLE, FALSE);
            g_pd3dDevice->SetRenderState(D3DRS_SCISSORTESTENABLE, FALSE);
            D3DCOLOR clear_col_dx = D3DCOLOR_RGBA((int)(clear_color.x * 255.0f), (int)(clear_color.y * 255.0f), (int)(clear_color.z * 255.0f), (int)(clear_color.w * 255.0f));
            g_pd3dDevice->Clear(0, NULL, D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER, clear_col_dx, 1.0f, 0);
            if (g_pd3dDevice->BeginScene() >= 0)
            {
                ImGui::Render();
                ImGui_ImplDX9_RenderDrawData(ImGui::GetDrawData());
                g_pd3dDevice->EndScene();
            }
            HRESULT result = g_pd3dDevice->Present(NULL, NULL, NULL, NULL);

            // Handle loss of D3D9 device
            if (result == D3DERR_DEVICELOST && g_pd3dDevice->TestCooperativeLevel() == D3DERR_DEVICENOTRESET)
            {
                ResetDevice();
            }
        }
    }
    catch (std::exception &e)
    {
        // Always close connections in case of error
        dbObject.Desconectar();

        CErrorEnFuncion ef("main(void)");
        std::ostringstream os;
        os << "ERROR:" << e.what();
        std::cout << os.str() << std::endl;
        THROW_ERROR(e, ef);
        return (0);
    }

    
    ImGui_ImplDX9_Shutdown();
    ImGui_ImplWin32_Shutdown();
    ImNodes::DestroyContext();
    ImPlot::DestroyContext();
    ImGui::DestroyContext();

    CleanupDeviceD3D();
    ::DestroyWindow(hwnd);
    ::UnregisterClass(wc.lpszClassName, wc.hInstance);

    return 0;
}

bool CreateDeviceD3D(HWND hWnd)
{
    if ((g_pD3D = Direct3DCreate9(D3D_SDK_VERSION)) == NULL)
    {
        return false;
    }

    // Create the D3DDevice
    ZeroMemory(&g_d3dpp, sizeof(g_d3dpp));
    g_d3dpp.Windowed = TRUE;
    g_d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD;
    g_d3dpp.BackBufferFormat = D3DFMT_UNKNOWN;
    g_d3dpp.EnableAutoDepthStencil = TRUE;
    g_d3dpp.AutoDepthStencilFormat = D3DFMT_D16;
    g_d3dpp.PresentationInterval = D3DPRESENT_INTERVAL_IMMEDIATE;
    if (g_pD3D->CreateDevice(D3DADAPTER_DEFAULT, D3DDEVTYPE_HAL, hWnd, D3DCREATE_HARDWARE_VERTEXPROCESSING, &g_d3dpp, &g_pd3dDevice) < 0)
    {
        return false;
    }

    return true;
}

void CleanupDeviceD3D()
{
    if (g_pd3dDevice)
    {
        g_pd3dDevice->Release();
        g_pd3dDevice = NULL;
    }
    if (g_pD3D)
    {
        g_pD3D->Release();
        g_pD3D = NULL;
    }
}

void ResetDevice()
{
    ImGui_ImplDX9_InvalidateDeviceObjects();
    HRESULT hr = g_pd3dDevice->Reset(&g_d3dpp);
    if (hr == D3DERR_INVALIDCALL)
        IM_ASSERT(0);
    ImGui_ImplDX9_CreateDeviceObjects();
}

// Forward declare message handler from imgui_impl_win32.cpp
extern IMGUI_IMPL_API LRESULT ImGui_ImplWin32_WndProcHandler(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam);

// Win32 message handler
LRESULT WINAPI WndProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
    if (ImGui_ImplWin32_WndProcHandler(hWnd, msg, wParam, lParam))
        return true;

    switch (msg)
    {
    case WM_SIZE:
        if (g_pd3dDevice != NULL && wParam != SIZE_MINIMIZED)
        {
            g_d3dpp.BackBufferWidth = LOWORD(lParam);
            g_d3dpp.BackBufferHeight = HIWORD(lParam);
            ResetDevice();
        }
        return 0;
    case WM_SYSCOMMAND:
        if ((wParam & 0xfff0) == SC_KEYMENU) // Disable ALT application menu
            return 0;
        break;
    case WM_DESTROY:
        ::PostQuitMessage(0);
        return 0;
    }
    return ::DefWindowProc(hWnd, msg, wParam, lParam);
}
