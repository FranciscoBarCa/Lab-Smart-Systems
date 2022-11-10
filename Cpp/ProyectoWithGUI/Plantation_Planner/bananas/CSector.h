#pragma once
#include "CEstate.h"
#include <string>
#include "../imgui.h"
#include "../imnodes/imnodes.h"

//#include "./CPipe.h"

#include <iostream>
#include <list>

class CSector
{
public:
    CSector();
    //~CSector();
    virtual ~CSector(void){};
    // CSector(unsigned int i, CEstate e, float w) : m_id(i), m_estate(e), m_water_demand(w), m_description("Hola"){};
    CSector(unsigned int i, CEstate e, float w);
    // Draws Sector on IMGUI
    void draw();

private:
    unsigned int m_id;
    std::string m_description;
    CEstate m_estate;
    float m_water_demand;

        // std::vector<CPipe> m_Pipes;
    //  std::vector<boost::shared_ptr<CPipe>> m_Pipes;		 // Pipes that arrive to that node
    // std::vector<boost::shared_ptr<CSensor>> m_Sensors;	 // Sensor at the node
    //  std::vector<boost::shared_ptr<CActuator>> m_Actuators; // Sensor at the node

    // Structure with gui data
    struct
    {
        bool m_editing_water_demand = false;
        int Nodeid; // id of input at imnodes

    } m_gui_data;

    friend class CPipe; // To access m_id
    // Friend funtion to get a Sector by an id
    friend std::shared_ptr<CSector> getSectorById(unsigned int id, std::list<std::shared_ptr<CSector>> &sectors);
};

std::shared_ptr<CSector> getSectorById(unsigned int id, std::list<std::shared_ptr<CSector>> &sectors);