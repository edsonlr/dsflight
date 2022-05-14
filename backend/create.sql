create table tb_flight (id int8 generated by default as identity, count int4, data_chegada varchar(255), data_partida varchar(255), destino varchar(255), duracao int4, image varchar(255), origem varchar(255), score float8, tipo_voo varchar(255), title varchar(255), primary key (id));
create table tb_score (value float8, flight_id int8 not null, user_id int8 not null, primary key (flight_id, user_id));
create table tb_user (id int8 generated by default as identity, email varchar(255), primary key (id));
alter table if exists tb_score add constraint FKdakb1j19o5u8e9hnr6mxcc1tq foreign key (flight_id) references tb_flight;
alter table if exists tb_score add constraint FKl8lgmbrjoav0thqqtqx6vrr4k foreign key (user_id) references tb_user;
INSERT INTO tb_user(email) VALUES ('maria@gmail.com');
INSERT INTO tb_user(email) VALUES ('joao@gmail.com');
INSERT INTO tb_user(email) VALUES ('ana@gmail.com');
INSERT INTO tb_user(email) VALUES ('lucia@gmail.com');
INSERT INTO tb_user(email) VALUES ('joaquim@gmail.com');
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Pluna - Boeing 737 - CX-BHM', 'http://www.geocities.ws/rumboalsud/B737/13-cx-vhm.jpg', '01/07/1971', '01/07/1971', 'Montevideo - Carrasco', 'São Paulo - Congonhas', 'inter'  , 160) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Pluna - Boeing 737 - CX-BHM', 'http://www.geocities.ws/rumboalsud/B737/13-cx-vhm.jpg', '09/07/1971', '09/07/1971', 'São Paulo - Congonhas', 'Montevideo - Carrasco', 'inter'  , 160) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'TAP - Boeing 707 - MATR', 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Boeing_707-382B%2C_TAP_-_Transportes_Aereos_Portugueses_AN1918746.jpg', '01/07/1975', '02/07/1975', 'Lisboa - Recife', 'Rio de Janeiro - Galeao', 'inter'  , 170) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'TAP - Boeing 707 - MATR', 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Boeing_707-382B%2C_TAP_-_Transportes_Aereos_Portugueses_AN1918746.jpg', '01/07/1975', '02/07/1975', 'Lisboa - Lisboa', 'Rio de Janeiro - Recife', 'inter'  , 450) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Iberia - Caravelle - MATR', 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Iberia_Caravelle_Fitzgerald.jpg', '02/07/1975', '02/07/1975', 'Madri - Madri', 'Lisboa - Lisboa', 'inter'  , 80) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Iberia - Caravelle - MATR', 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Iberia_Caravelle_Fitzgerald.jpg', '30/07/1975', '30/07/1975', 'Lisboa - Lisboa', 'Madri - Madrid', 'inter'  , 80) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'TAP - Boeing 707 - MATR', 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Boeing_707-382B%2C_TAP_-_Transportes_Aereos_Portugueses_AN1918746.jpg', '01/07/1975', '02/07/1975', 'Lisboa - Recife', 'Rio de Janeiro - Lisboa ', 'inter'  , 450) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'TAP - Boeing 707 - MATR', 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Boeing_707-382B%2C_TAP_-_Transportes_Aereos_Portugueses_AN1918746.jpg', '30/07/1975', '31/07/1975', 'Rio de Janeiro - Galeao', 'Lisboa - Recife', 'inter'  , 170) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? Panan?Varig? - Boeing 747 ? - MATR', 'https://aeroin.net/wp-content/uploads/2019/09/AMERICAN-747-AEROIN-2.jpg', '29/03/1989', '30/03/1989', 'Nova York - Kennedy', 'São Paulo - Guarulhos', 'inter'  , 590) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American Eagle? - Dash8? - MATR', 'American-Eagle-Airlines-Bombardier-DHC-8-100-Photos-1024x768.jpg (1024×768) (airlinesfleet.com)', '30/03/1989', '30/03/1989', 'Washington - National', 'Nova York - Kennedy?LG?', 'inter'  , 80) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Delta ? - DC10 ? - MATR', 'https://photos-e1.flightcdn.com/photos/retriever/7fb534238f3de26eeadadf5b88dbc43cc7cf3c08', '30/03/1989', '30/03/1989', 'Dallas - Dallas-FW', 'Washington? - National', 'inter'  , 220) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American Eagle? - Bandeirante? - MATR', 'https://www.airhistory.net/photos/0282111.jpg', '30/03/1989', '30/03/1989', 'College Station - College ST', 'Dallas  - Dallas-FW', 'inter'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American Eagle? - Bandeirante? - MATR', 'https://www.airhistory.net/photos/0282111.jpg', '30/03/1989', '30/03/1989', 'Dallas  - Dallas-FW', 'College Station - College ST', 'inter'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Delta ? - DC10 ? - MATR', 'https://photos-e1.flightcdn.com/photos/retriever/7fb534238f3de26eeadadf5b88dbc43cc7cf3c08', '30/03/1989', '30/03/1989', 'Washington? - National', 'Dallas - Dallas-FW', 'inter'  , 220) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American Eagle? - Dash8? - MATR', 'American-Eagle-Airlines-Bombardier-DHC-8-100-Photos-1024x768.jpg (1024×768) (airlinesfleet.com)', '14/04/1989', '14/04/1989', 'Nova York - Kennedy?LG?', 'Washington - National', 'inter'  , 80) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? Panan?Varig? - Boeing 747 ? - MATR', 'https://aeroin.net/wp-content/uploads/2019/09/AMERICAN-747-AEROIN-2.jpg', '15/04/1989', '16/04/1989', 'São Paulo - Guarulhos', 'Nova York - Kennedy', 'inter'  , 590) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? Panan?Varig? - Boeing 747 ? - MATR', 'https://aeroin.net/wp-content/uploads/2019/11/VARIG-PP-VNA.jpg', '01/09/1990', '02/09/1990', 'Nova York - Kennedy', 'São Paulo - Guarulhos', 'inter'  , 590) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'United - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/United_Airlines_Boeing_737-222%3B_N9075U%2C_April_1990_CRO_%285057344444%29.jpg', '01/09/1990', '02/09/1990', 'Washington - Dulles?', 'Nova York - Kennedy?LG?', 'inter'  , 80) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'United - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/United_Airlines_Boeing_737-222%3B_N9075U%2C_April_1990_CRO_%285057344444%29.jpg', '01/09/1990', '02/09/1990', 'Minneapolis - Minneapolis', 'Washington? - Dulles', 'inter'  , 145) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'United - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/United_Airlines_Boeing_737-222%3B_N9075U%2C_April_1990_CRO_%285057344444%29.jpg', '01/09/1990', '02/09/1990', 'Columbia - Columbia', 'Minneapolis - Minneapolis', 'inter'  , 280) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'United - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/United_Airlines_Boeing_737-222%3B_N9075U%2C_April_1990_CRO_%285057344444%29.jpg', '01/09/1990', '02/09/1990', 'Chicago - Ohare', 'Columbia - Columbia', 'inter'  , 240) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'United - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/United_Airlines_Boeing_737-222%3B_N9075U%2C_April_1990_CRO_%285057344444%29.jpg', '01/09/1990', '02/09/1990', 'San Diego - San Diego', 'Chicago - Ohare', 'inter'  , 270) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'United - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/United_Airlines_Boeing_737-222%3B_N9075U%2C_April_1990_CRO_%285057344444%29.jpg', '01/09/1990', '02/09/1990', 'San Francisco - San Francisco', 'Los Angeles - Los Angeles', 'inter'  , 90) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'United - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/United_Airlines_Boeing_737-222%3B_N9075U%2C_April_1990_CRO_%285057344444%29.jpg', '01/09/1990', '02/09/1990', 'Nova York - Kennedy?LG?', 'San Francisco - San Francisco', 'inter'  , 325) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? Panan?Varig? - Boeing 747 ? - MATR', 'https://aeroin.net/wp-content/uploads/2019/11/VARIG-PP-VNA.jpg', '01/09/1990', '02/09/1990', 'São Paulo - Guarulhos', 'Nova York - Kennedy', 'inter'  , 590) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? United?Varig? - Boeing 747 ? - MATR', 'https://cdn.planespotters.net/photo/708000/original/n755pa-pan-american-world-airways-pan-am-boeing-747-121_PlanespottersNet_708497_46cafb0c88.jpg', '09/07/1993', '10/07/1993', 'Miami - Miami', 'São Paulo - Guarulhos', 'inter'  , 505) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? United? - Boeing ? - MATR', '0', '24/07/1993', '24/07/1993', 'Hartford - Hartford', 'Miami - Miami', 'inter'  , 185) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? United? - Boeing  ? - MATR', '0', '30/07/1993', '30/07/1993', 'Miami - Miami', 'Hartford - Hartford', 'inter'  , 185) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'American? United?Varig? - Boeing 747 ? - MATR', 'https://cdn.planespotters.net/photo/708000/original/n755pa-pan-american-world-airways-pan-am-boeing-747-121_PlanespottersNet_708497_46cafb0c88.jpg', '30/07/1993', '31/07/1993', 'São Paulo - Guarulhos', 'Miami - Miami', 'inter'  , 505) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig ? - Boeing 767 - MATR', 'https://avioesemusicas.com/wp-content/uploads/2013/09/PP-VNN294.jpg', '09/06/1996', '10/06/1996', 'Madri - Madri', 'São Paulo - Guarulhos', 'inter'  , 615) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Iberia ? - Boeing ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/b/b3/B-_737_Iberia.jpg', '09/06/1996', '10/06/1996', 'Barcelona - Barcelona', 'Madri - Madri', 'inter'  , 80) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Iberia ? - Boeing  ? - MATR', 'https://upload.wikimedia.org/wikipedia/commons/b/b3/B-_737_Iberia.jpg', '17/06/1996', '17/06/1996', 'Madri - Madri', 'Barcelona - Barcelona', 'inter'  , 80) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig ? - Boeing 767 - MATR', 'https://avioesemusicas.com/wp-content/uploads/2013/09/PP-VNN294.jpg', '18/06/1996', '18/06/1996', 'São Paulo - Guarulhos', 'Madri - Madri', 'inter'  , 615) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/04/1984', '01/04/1984', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '05/04/1984', '05/04/1984', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/04/1985', '01/04/1985', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '05/04/1985', '05/04/1985', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/05/1985', '05/05/1985', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/05/1985', '05/05/1985', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/06/1985', '05/06/1985', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/06/1985', '05/06/1985', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/04/1986', '01/04/1986', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '05/04/1986', '05/04/1986', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/09/1989', '01/09/1989', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '05/09/1989', '05/09/1989', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '01/10/1989', '01/10/1989', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Electra - MATR', 'https://contatoradar.com.br/wp-content/uploads/2018/05/ppvjm_sdu_18_08_76.jpg', '05/10/1989', '05/10/1989', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'TAM - Fokker 100 - MATR', 'https://aventurasnahistoria.uol.com.br/media/uploads/avioes/fokker_100_1.jpg', '01/04/2001', '01/04/2001', 'Rio de Janeiro - Santos Dumont', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'TAM - Fokker 101 - MATR', 'https://aventurasnahistoria.uol.com.br/media/uploads/avioes/fokker_100_1.jpg', '05/04/2001', '05/04/2001', 'São Paulo - Congonhas', 'Rio de janeiro - Santos Dumont', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://aeroin.net/wp-content/uploads/2020/10/727-varig-pp-vld-1024x664.jpg', '01/04/1984', '01/04/1984', 'Porto Alegre - Porto Alegre', 'São Paulo - Congonhas', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://aeroin.net/wp-content/uploads/2020/10/727-varig-pp-vld-1024x664.jpg', '05/04/1984', '05/04/1984', 'São Paulo - Congonhas', 'Porto Alegre - Porto Alegre', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://aeroin.net/wp-content/uploads/2020/10/727-varig-pp-vld-1024x664.jpg', '01/04/1985', '01/04/1985', 'Porto Alegre - Porto Alegre', 'São Paulo - Congonhas', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://aeroin.net/wp-content/uploads/2020/10/727-varig-pp-vld-1024x664.jpg', '05/04/1985', '05/04/1985', 'São Paulo - Congonhas', 'Porto Alegre - Porto Alegre', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Cruzeiro - Airbus a300 - MATR', 'https://img.comunidades.net/avi/avicom/Cruzeiro_do_Sul_Airbus_A300.jpg', '01/06/1990', '01/06/1990', 'Porto Alegre - Porto Alegre', 'São Paulo - Congonhas', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Cruzeiro - Airbus a300 - MATR', 'https://img.comunidades.net/avi/avicom/Cruzeiro_do_Sul_Airbus_A300.jpg', '05/06/1990', '05/06/1990', 'São Paulo - Congonhas', 'Porto Alegre - Porto Alegre', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Cruzeiro - Airbus a300 - MATR', 'https://img.comunidades.net/avi/avicom/Cruzeiro_do_Sul_Airbus_A300.jpg', '01/07/1990', '01/07/1990', 'Porto Alegre - Porto Alegre', 'São Paulo - Congonhas', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Cruzeiro - Airbus a300 - MATR', 'https://img.comunidades.net/avi/avicom/Cruzeiro_do_Sul_Airbus_A300.jpg', '05/07/1990', '05/07/1990', 'São Paulo - Congonhas', 'Porto Alegre - Porto Alegre', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/06/1990', '01/06/1990', 'Curitiba - Curitiba', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/06/1990', '05/06/1990', 'São Paulo - Congonhas', 'Curitiba - Curitiba', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/07/1990', '01/07/1990', 'Curitiba - Curitiba', 'São Paulo - Congonhas', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/07/1990', '05/07/1990', 'São Paulo - Congonhas', 'Curitiba - Curitiba', 'nacional'  , 60) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/06/1990', '01/06/1990', 'Florianopolis - Florianopolis', 'São Paulo - Congonhas', 'nacional'  , 75) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/06/1990', '05/06/1990', 'São Paulo - Congonhas', 'Florianopolis - Florianopolis', 'nacional'  , 75) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/07/1990', '01/07/1990', 'Florianopolis - Florianopolis', 'São Paulo - Congonhas', 'nacional'  , 75) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/07/1990', '05/07/1990', 'São Paulo - Congonhas', 'Florianopolis - Florianopolis', 'nacional'  , 75) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/06/1990', '01/06/1990', 'Belo Horizonte - Belo Horizonte', 'São Paulo - Congonhas', 'nacional'  , 70) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/06/1990', '05/06/1990', 'São Paulo - Congonhas', 'Belo Horizonte - Belo Horizonte', 'nacional'  , 70) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/07/1990', '01/07/1990', 'Belo Horizonte - Belo Horizonte', 'São Paulo - Congonhas', 'nacional'  , 70) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/07/1990', '05/07/1990', 'São Paulo - Congonhas', 'Belo Horizonte - Belo Horizonte', 'nacional'  , 70) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/06/1990', '01/06/1990', 'Brasilia - Brasilia', 'São Paulo - Congonhas', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/06/1990', '05/06/1990', 'São Paulo - Congonhas', 'Brasilia - Brasilia', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '01/07/1990', '01/07/1990', 'Brasilia - Brasilia', 'São Paulo - Congonhas', 'nacional'  , 100) ;
INSERT INTO tb_flight(score, count, title, image, data_chegada, data_partida, destino, origem, tipo_voo, duracao) VALUES (3, 5, 'Varig - Boeing  - MATR', 'https://autoentusiastas.com.br/ae/wp-content/uploads/2020/03/ae0364b6f1b83ce6f17cd9e459d3de7a.jpg', '05/07/1990', '05/07/1990', 'São Paulo - Congonhas', 'Brasilia - Brasilia', 'nacional'  , 100) ;
INSERT INTO tb_score(flight_id, user_id, value) VALUES (1, 1, 5.0);
INSERT INTO tb_score(flight_id, user_id, value) VALUES (1, 2, 4.0);
INSERT INTO tb_score(flight_id, user_id, value) VALUES (2, 1, 3.0);
INSERT INTO tb_score(flight_id, user_id, value) VALUES (2, 2, 3.0);
INSERT INTO tb_score(flight_id, user_id, value) VALUES (2, 3, 4.0);
