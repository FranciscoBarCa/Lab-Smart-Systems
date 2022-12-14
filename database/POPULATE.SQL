INSERT INTO address (LON, LAT, description)
VALUES (
        55.366258634519916,
        157.53885533006786,
        "address1"
    );
INSERT INTO address (LON, LAT, description)
VALUES (
        79.34888330082836,
        164.1956777309478,
        "address2"
    );
INSERT INTO address (LON, LAT, description)
VALUES (
        45.62723063383774,
        86.64753555648073,
        "address3"
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        55.366258634519916,
        157.53885533006786,
        FROM_UNIXTIME(1660964283),
        20.86242543307201,
        24
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        79.34888330082836,
        164.1956777309478,
        FROM_UNIXTIME(1661666878),
        91.55541360889383,
        32
    );
INSERT INTO weather (LON, LAT, timestamp, rain, temperature)
VALUES (
        45.62723063383774,
        86.64753555648073,
        FROM_UNIXTIME(1660050096),
        14.253925170336757,
        30
    );
INSERT INTO estate (LON, LAT)
VALUES (55.366258634519916, 157.53885533006786);
INSERT INTO estate (LON, LAT)
VALUES (79.34888330082836, 164.1956777309478);
INSERT INTO estate (LON, LAT)
VALUES (45.62723063383774, 86.64753555648073);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        1,
        55.366258634519916,
        157.53885533006786,
        954.2602312695426
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        2,
        79.34888330082836,
        164.1956777309478,
        61.967329953277364
    );
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND)
VALUES (
        3,
        45.62723063383774,
        86.64753555648073,
        374.6842641085226
    );
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (1, 1, "HUMIDITY", "HUMIDITY", "g/m3", "SECTOR");
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (
        2,
        2,
        "TEMPERATURE",
        "TEMPERATURE",
        "??c",
        "SECTOR"
    );
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (3, 3, "MINERAL", "MINERAL", "ppm", "SECTOR");
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (4, 4, "FLOW", "FLOW", "m3/s", "PIPE");
INSERT INTO sensor_type (
        ID_SENSOR_TYPE,
        ID_MEASUREMENT_TYPE,
        SENSOR_DESCRIPTION,
        MEASUREMENT_DESCRIPTION,
        UNIT,
        LOCATION
    )
VALUES (5, 5, "PRESSURE", "PRESSURE", "bar", "PIPE");
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (1, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (2, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (3, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (4, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (5, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (6, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (7, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (8, 2, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (9, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (10, 1, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (11, 3, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (12, 5, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (12, 1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (13, 5, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (13, 2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (14, 5, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (14, 3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type)
VALUES (15, 5, 5);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (15, 3);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (1, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (2, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (3, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (4, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (5, 3);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (6, 3);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (7, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (8, 1);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (9, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (10, 2);
INSERT INTO sect_sens_loc (id_sensor, id_sector)
VALUES (11, 3);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        1,
        FROM_UNIXTIME(1669731884),
        3,
        4.431526103264264
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        2,
        FROM_UNIXTIME(1669731884),
        3,
        4.160031982321007
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        3,
        FROM_UNIXTIME(1669731884),
        2,
        8.498367410949339
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        4,
        FROM_UNIXTIME(1669731884),
        1,
        8.266050694225477
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        5,
        FROM_UNIXTIME(1669731884),
        1,
        0.5086661800222436
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        6,
        FROM_UNIXTIME(1669731884),
        3,
        8.710980308260899
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        7,
        FROM_UNIXTIME(1669731884),
        3,
        8.1165159004199
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        8,
        FROM_UNIXTIME(1669731884),
        2,
        0.22086316533582617
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        9,
        FROM_UNIXTIME(1669731884),
        3,
        3.6784977538441623
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        10,
        FROM_UNIXTIME(1669731884),
        1,
        8.006210722231518
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        11,
        FROM_UNIXTIME(11669731884),
        3,
        7.3064367452302195
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        12,
        FROM_UNIXTIME(11669731884),
        5,
        8.3064367452302195
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        13,
        FROM_UNIXTIME(11669731884),
        5,
        13.3064367452302195
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        14,
        FROM_UNIXTIME(11669731884),
        5,
        4.3064367452302195
    );
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value)
VALUES (
        15,
        FROM_UNIXTIME(11669731884),
        5,
        6.3064367452302195
    );
INSERT INTO actuator_type (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION)
VALUES (1, "MINERAL VALVE", 1, "SECTOR");
INSERT INTO actuator_type (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION)
VALUES (2, "WATER VALVE", 1, "PIPE");
INSERT INTO actuator_type (ID_TYPE, DESCRIPTION, IS_SWITCH, LOCATION)
VALUES (3, "PUMP", 1, "PIPE");
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (1, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (2, 1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE)
VALUES (3, 1);
INSERT INTO sect_act_loc (ID_ACTUATOR, ID_SECTOR)
VALUES (3, 3);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1666576034), 0);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1664034663), 74);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1665923674), 27);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (1, FROM_UNIXTIME(1661415099), 48);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1665105442), 32);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1667449920), 35);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1663312075), 14);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (2, FROM_UNIXTIME(1662665723), 100);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1667239016), 9);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1664188414), 22);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1664087986), 89);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (3, FROM_UNIXTIME(1664636967), 88);
INSERT INTO pipe (ID_PIPE)
VALUES (1);
INSERT INTO pipe (ID_PIPE)
VALUES (2);
INSERT INTO pipe (ID_PIPE)
VALUES (3);
INSERT INTO pipe (ID_PIPE)
VALUES (4);
INSERT INTO pipe (ID_PIPE)
VALUES (5);
INSERT INTO pipe (ID_PIPE)
VALUES (6);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (5, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (6, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (7, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (8, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (9, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (10, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (11, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (12, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (13, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (14, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (15, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (16, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (17, 2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (18, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (19, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (20, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (21, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE)
VALUES (22, 3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (5, 1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (6, 1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (7, 2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (8, 2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (9, 3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (10, 3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (11, 4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (12, 4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (13, 5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (14, 5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (15, 6);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (16, 6);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (17, 1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (18, 2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (19, 3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (20, 4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (21, 5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE)
VALUES (22, 6);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1662563592), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1662757403), 89);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1665511208), 62);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (5, FROM_UNIXTIME(1660679415), 69);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1660918180), 56);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1662684888), 68);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1666343267), 60);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (6, FROM_UNIXTIME(1660661308), 95);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1660756139), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1665072284), 15);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1660803645), 30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (7, FROM_UNIXTIME(1664135122), 17);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1664778616), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1662303277), 44);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1665448628), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (8, FROM_UNIXTIME(1663843540), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1660987881), 19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1667035099), 36);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1667373495), 0);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (9, FROM_UNIXTIME(1666851067), 99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1666990335), 67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1664787927), 56);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1666881013), 25);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (10, FROM_UNIXTIME(1662389058), 40);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1662249120), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1661501341), 53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1661185602), 17);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (11, FROM_UNIXTIME(1667203042), 76);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1664851220), 15);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1661093704), 81);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1661363942), 82);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (12, FROM_UNIXTIME(1662804069), 61);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1661066751), 14);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1664431184), 52);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1665721319), 17);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (13, FROM_UNIXTIME(1664944208), 38);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1663870699), 50);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1664993808), 92);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1662541806), 27);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (14, FROM_UNIXTIME(1662135955), 96);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1660411685), 17);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1663342047), 14);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1662903146), 26);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (15, FROM_UNIXTIME(1665745554), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1664819527), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1662567879), 14);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1662605107), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (16, FROM_UNIXTIME(1667091493), 12);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1665164278), 2);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1666110647), 94);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1664199445), 83);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1662136228), 22);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1663133859), 85);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (17, FROM_UNIXTIME(1664106297), 17);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1664136510), 42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1663150297), 57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1663197789), 67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (18, FROM_UNIXTIME(1665162343), 25);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (19, FROM_UNIXTIME(1661164044), 52);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1666209673), 5);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1661296415), 18);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1663349971), 98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (20, FROM_UNIXTIME(1662081608), 30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1666784476), 87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1661511088), 88);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1661446228), 82);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE)
VALUES (21, FROM_UNIXTIME(1662933031), 51);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 2, 1);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (1, 3, 2);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 3, 4);
INSERT INTO connection (ID_SECTOR_IN, ID_SECTOR_OUT, ID_PIPE)
VALUES (2, 1, 5);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (16, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (17, 5, 5);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (18, 5, 5);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (19, 4, 4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE)
VALUES (20, 4, 4);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (16, 1);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (17, 2);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (18, 3);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (19, 4);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE)
VALUES (20, 5);
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        16,
        FROM_UNIXTIME(1669731884),
        4,
        2.103547531265436
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, value)
VALUES (
        17,
        FROM_UNIXTIME(1669731884),
        5,
        4.438330171083398
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        18,
        FROM_UNIXTIME(1669731884),
        5,
        9.703135648750909
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        19,
        FROM_UNIXTIME(1669731884),
        4,
        3.425335317172855
    );
INSERT INTO value_pipe_sensor (ID_SENSOR, TIMESTAMP, ID_MEASUREMENT_TYPE, VALUE)
VALUES (
        20,
        FROM_UNIXTIME(1669731884),
        4,
        11.425335317172855
    );
-- @block
-- HACE LOS IS SWITCH BOOLEANOS
UPDATE banana.value_pipe_actuator
SET VALUE = floor(rand() * 10) % 2
WHERE ID_ACTUATOR IN (
        SELECT ID_ACTUATOR
        FROM banana.actuator_pipe,
            banana.actuator_type
        WHERE banana.actuator_pipe.ID_TYPE = banana.actuator_type.ID_TYPE
            AND banana.actuator_type.IS_SWITCH = 1
    );
UPDATE banana.value_sector_actuator
SET VALUE = floor(rand() * 10) % 2
WHERE ID_ACTUATOR IN (
        SELECT ID_ACTUATOR
        FROM banana.actuator_sector,
            banana.actuator_type
        WHERE banana.actuator_sector.ID_TYPE = banana.actuator_type.ID_TYPE
            AND banana.actuator_type.IS_SWITCH = 1
    );