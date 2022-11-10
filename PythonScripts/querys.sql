
INSERT INTO estate (LON, LAT) VALUES ( 56.40261898970082, 213.69692762848018);
INSERT INTO estate (LON, LAT) VALUES ( 37.9761168251837, 37.34122827140072);
INSERT INTO estate (LON, LAT) VALUES ( 79.11637326285943, 214.13422218652605);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 1, 56.40261898970082, 213.69692762848018, 131.12543912446307);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 2, 56.40261898970082, 213.69692762848018, 425.19013606691067);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 3, 56.40261898970082, 213.69692762848018, 533.0611025021235);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 1, 37.9761168251837, 37.34122827140072, 921.0589686504968);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 2, 37.9761168251837, 37.34122827140072, 856.6018557852693);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 3, 37.9761168251837, 37.34122827140072, 436.4828978577208);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 1, 79.11637326285943, 214.13422218652605, 38.954176354274004);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 2, 79.11637326285943, 214.13422218652605, 59.78330150304512);
INSERT INTO sector (id_sector, LON, LAT, WATER_DEMAND) VALUES ( 3, 79.11637326285943, 214.13422218652605, 27.889500026517243);
INSERT INTO address (LON, LAT, description) VALUES ( 56.40261898970082, 213.69692762848018, address1);
INSERT INTO address (LON, LAT, description) VALUES ( 37.9761168251837, 37.34122827140072, address2);
INSERT INTO address (LON, LAT, description) VALUES ( 79.11637326285943, 214.13422218652605, address3);
INSERT INTO weather (LON, LAT, timestamp, rain, temperature) VALUES ( 56.40261898970082, 213.69692762848018, 1660980789, 65.72191728521166, 21);
INSERT INTO weather (LON, LAT, timestamp, rain, temperature) VALUES ( 37.9761168251837, 37.34122827140072, 1662887137, 28.331077888196553, 18);
INSERT INTO weather (LON, LAT, timestamp, rain, temperature) VALUES ( 79.11637326285943, 214.13422218652605, 1665821765, 72.04802312794992, 29);
INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( 1, 1 );
INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( 2, 1 );
INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( 2, 2 );
INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( 4, 2 );
INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( 3, 3 );
INSERT INTO sect_sensor_loc (id_sensor, id_sector) VALUES ( 6, 3 );
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 1, 1,1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 2, 2,2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 3, 2,2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 4, 3,3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 5, 1,1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 6, 3,3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 7, 2,2);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 8, 3,3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 9, 3,3);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 10, 1,1);
INSERT INTO sensor_sector (id_sensor, id_measurement_type, id_sensor_type) VALUES ( 11, 1,1);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 1, 1663388872, 3, 6.749051751245591);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 2, 1661675080, 3, 7.5111735624931715);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 3, 1667013405, 1, 6.48771724198861);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 4, 1667239462, 1, 9.768714052174696);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 5, 1662658597, 2, 5.524944795351649);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 6, 1661916266, 3, 9.084292967087137);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 7, 1665404478, 2, 4.358493701998504);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 8, 1664430703, 3, 9.43008321288665);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 9, 1660807740, 3, 7.964623412205435);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 10, 1664256317, 2, 6.953562050633132);
INSERT INTO value_sector_sensor (id_sensor, timestamp, id_measurement_type, value) VALUES ( 11, 1660258539, 1, 2.296744268593992);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE) VALUES (1,1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE) VALUES (2,1);
INSERT INTO actuator_sector (ID_ACTUATOR, ID_TYPE) VALUES (3,1);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (1, FROM_UNIXTIME(1667392226),2);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (1, FROM_UNIXTIME(1664320097),44);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (1, FROM_UNIXTIME(1666796727),75);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (1, FROM_UNIXTIME(1663835831),64);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (2, FROM_UNIXTIME(1664235387),60);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (2, FROM_UNIXTIME(1662345150),9);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (2, FROM_UNIXTIME(1663288316),42);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (2, FROM_UNIXTIME(1665995494),66);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (3, FROM_UNIXTIME(1665562321),42);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (3, FROM_UNIXTIME(1661973368),22);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (3, FROM_UNIXTIME(1661088018),28);
INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (3, FROM_UNIXTIME(1660872804),17);
INSERT INTO sect_act_loc (ID_ACTUATOR, ID_SECTOR) VALUES (3, 3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (5,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (6,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (7,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (8,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (9,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (10,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (11,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (12,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (13,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (14,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (15,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (16,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (17,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (18,3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (19,3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (20,3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (21,3);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (5, FROM_UNIXTIME(1662711002),81);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (5, FROM_UNIXTIME(1663147703),11);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (5, FROM_UNIXTIME(1661631354),26);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (5, FROM_UNIXTIME(1666197551),79);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (6, FROM_UNIXTIME(1667474954),20);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (6, FROM_UNIXTIME(1661190968),59);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (6, FROM_UNIXTIME(1666521298),28);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (6, FROM_UNIXTIME(1666944705),68);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (7, FROM_UNIXTIME(1661044333),30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (7, FROM_UNIXTIME(1663543310),46);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (7, FROM_UNIXTIME(1664041499),82);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (7, FROM_UNIXTIME(1666438040),41);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (8, FROM_UNIXTIME(1662080361),69);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (8, FROM_UNIXTIME(1666946957),64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (8, FROM_UNIXTIME(1663349510),41);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (8, FROM_UNIXTIME(1662321904),79);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (9, FROM_UNIXTIME(1665536880),40);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (9, FROM_UNIXTIME(1661171284),41);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (9, FROM_UNIXTIME(1666927956),1);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (9, FROM_UNIXTIME(1662181461),30);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (10, FROM_UNIXTIME(1667330872),64);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (10, FROM_UNIXTIME(1666575629),11);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (10, FROM_UNIXTIME(1662734010),0);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (10, FROM_UNIXTIME(1663472289),31);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (11, FROM_UNIXTIME(1665496715),95);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (11, FROM_UNIXTIME(1664901286),37);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (11, FROM_UNIXTIME(1660021769),39);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (11, FROM_UNIXTIME(1665569565),26);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (12, FROM_UNIXTIME(1660429434),84);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (12, FROM_UNIXTIME(1666224736),53);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (12, FROM_UNIXTIME(1661096151),42);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (12, FROM_UNIXTIME(1660803453),88);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (13, FROM_UNIXTIME(1664794043),55);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (13, FROM_UNIXTIME(1663961766),51);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (13, FROM_UNIXTIME(1665737375),57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (13, FROM_UNIXTIME(1665134632),19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (14, FROM_UNIXTIME(1661719330),100);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (14, FROM_UNIXTIME(1662612031),67);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (14, FROM_UNIXTIME(1665860909),19);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (14, FROM_UNIXTIME(1666291450),33);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (15, FROM_UNIXTIME(1660450251),21);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (15, FROM_UNIXTIME(1662448265),87);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (15, FROM_UNIXTIME(1663552482),3);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (15, FROM_UNIXTIME(1661310011),7);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (16, FROM_UNIXTIME(1662264918),85);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (16, FROM_UNIXTIME(1663279731),38);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (16, FROM_UNIXTIME(1663183413),39);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (16, FROM_UNIXTIME(1664770758),90);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (17, FROM_UNIXTIME(1664202417),90);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (17, FROM_UNIXTIME(1661542661),8);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (17, FROM_UNIXTIME(1666213446),98);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (17, FROM_UNIXTIME(1666942720),13);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (18, FROM_UNIXTIME(1665747643),99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (18, FROM_UNIXTIME(1661215430),99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (18, FROM_UNIXTIME(1661012571),100);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (18, FROM_UNIXTIME(1662467475),88);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (19, FROM_UNIXTIME(1661949205),61);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (19, FROM_UNIXTIME(1666921504),57);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (19, FROM_UNIXTIME(1664503169),14);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (19, FROM_UNIXTIME(1665495458),99);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (20, FROM_UNIXTIME(1662512127),0);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (20, FROM_UNIXTIME(1660006756),72);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (20, FROM_UNIXTIME(1666988084),54);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (20, FROM_UNIXTIME(1663869607),43);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (21, FROM_UNIXTIME(1660693357),69);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (21, FROM_UNIXTIME(1664250322),14);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (21, FROM_UNIXTIME(1664464589),83);
INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (21, FROM_UNIXTIME(1661532453),87);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (5,1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (6,1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (7,2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (8,2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (9,3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (10,3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (11,4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (12,4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (13,5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (14,5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (15,6);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (16,6);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (17,1);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (18,2);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (19,3);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (20,4);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (21,5);
INSERT INTO pipe_act_loc (ID_ACTUATOR, ID_PIPE) VALUES (22,6);
INSERT INTO pipe (ID_PIPE) VALUES (1);
INSERT INTO pipe (ID_PIPE) VALUES (2);
INSERT INTO pipe (ID_PIPE) VALUES (3);
INSERT INTO pipe (ID_PIPE) VALUES (4);
INSERT INTO pipe (ID_PIPE) VALUES (5);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE) VALUES (13,1);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE) VALUES (14,2);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE) VALUES (15,3);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE) VALUES (16,4);
INSERT INTO pipe_sens_loc (ID_SENSOR, ID_PIPE) VALUES (17,5);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (13,5,5);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (14,5,5);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (15,4,4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (16,4,4);
INSERT INTO sensor_pipe (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (17,5,5);
INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (13, SELECT FROM_UNIXTIME(1660970776),5,2.374574785988611);
INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (14, SELECT FROM_UNIXTIME(1664444448),5,8.498021534833768);
INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (15, SELECT FROM_UNIXTIME(1661995815),5,0.47041085457367515);
INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (16, SELECT FROM_UNIXTIME(1663892135),4,8.606618255377224);
INSERT INTO value_pipe_sensor (ID_SENSOR, ID_MEASUREMENT_TYPE, ID_SENSOR_TYPE) VALUES (17, SELECT FROM_UNIXTIME(1663090177),5,9.732123222907068);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (5,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (6,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (7,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (8,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (9,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (10,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (11,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (12,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (13,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (14,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (15,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (16,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (17,2);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (18,3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (19,3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (20,3);
INSERT INTO actuator_pipe (ID_ACTUATOR, ID_TYPE) VALUES (21,3);
INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,2,1);
INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,3,2);
INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (1,4,3);
INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (2,3,4);
INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (2,4,5);
INSERT INTO connection (ID_SENSOR_IN, ID_SECTOR_OUT, ID_PIPE) VALUES (3,4,6);
INSERT INTO sensor_type (ID_SENSOR_TYPE, ID_MEASUREMENT_TYPE, SENSOR_DESCRIPTION, MEASUREMENT_DESCRIPTION, UNIT, LOCATION) VALUES (1,1, "HUMIDITY", "HUMIDITY", "g/m3", "SECTOR");
INSERT INTO sensor_type (ID_SENSOR_TYPE, ID_MEASUREMENT_TYPE, SENSOR_DESCRIPTION, MEASUREMENT_DESCRIPTION, UNIT, LOCATION) VALUES (2,2, "TEMPERATURE", "TEMPERATURE", "�c", "SECTOR");
INSERT INTO sensor_type (ID_SENSOR_TYPE, ID_MEASUREMENT_TYPE, SENSOR_DESCRIPTION, MEASUREMENT_DESCRIPTION, UNIT, LOCATION) VALUES (3,3, "MINERAL", "MINERAL", "ppm", "SECTOR");
INSERT INTO sensor_type (ID_SENSOR_TYPE, ID_MEASUREMENT_TYPE, SENSOR_DESCRIPTION, MEASUREMENT_DESCRIPTION, UNIT, LOCATION) VALUES (4,4, "FLOW", "FLOW", "m3/s", "PIPE");