INSERT INTO account VALUES ('Givaa', 'rapagiovanni@gmail.com', 'Giovanni', 'Rapa', 'pippo', 'Via Aldo Moro, 54', '1999-12-19'),
						   ('Derimax', 'deriggimario@yahoo.com', 'Mario', 'De Riggi', 'peppino', 'Via Fontanelle, 32', '2000-11-23'),
                           ('Sayril', 'cirilloantonio@gmail.com', 'Antonio', 'Cirillo', 'bellazio', 'Via dei porticati, 77', '1999-12-20'),
                           ('Elliot', 'adrianoamato@libero.it', 'Adriano', 'Amato', 'lolle', 'Viale degli astronauti, 120', '1999-12-31'),
						   ('yantCaccia', 'antoniocacciapuoti@libero.it', 'Antonio', 'Cacciapuoti', 'broxia', 'Via dei territori, 54', '1999-10-10'),
                           ('Rifle', 'andreafucile@yahoo.com', 'Andrea', 'Fucile', 'rippe', 'Via appia, 34', '2000-09-10'),
                           ('paglianese', 'angeloafeltra@libero.it', 'Angelo', 'Afeltra', 'chemasto', 'Viale dei pineti, 73', '1999-07-22'),
                           ('AuronVS', 'carmineamendola@gmail.com', 'Carmine', 'Amendola', 'iloveyou', 'Viale degli eroi, 25', '1994-05-26');
							
INSERT INTO venditore VALUES ('Givaa'),
							 ('Derimax'),
                             ('Elliot');
				
                             
INSERT INTO acquirente VALUES ('Sayril'),
							  ('yantCaccia'),
                              ('paglianese');
								

INSERT INTO CartaDiCredito VALUES (3505371321836, '09/13', 'Antonio Cacciapuoti', 'yantCaccia'),
                                  (3736482213047, '07/22', 'Antonio Cirillo', 'Sayril'),
                                  (7482398492889, '07/24', 'Angelo Afeltra', 'paglianese');
				
INSERT INTO TelefonoAccount VALUES (3453290176, 'Givaa'),
								   (3425124045, 'Derimax'),
                                   (3518630603, 'Sayril'),
                                   (3474348870, 'yantCaccia'),
                                   (3425454655, 'Elliot'),
                                   (3214434323, 'Rifle'),
                                   (3127365244, 'paglianese'),
                                   (3224467865, 'AuronVS');
						
INSERT INTO Staff VALUES ('FRTCPD88T14A456C', 'Cupido', 'Forti', 'Via Manin, 24', '1988-12-14'),
						 ('PCCBCC73R06D781L', 'Bacco', 'Piccerillo', 'Via San Martino, 13', '1973-10-6'),
                         ('DHYFRM35R18C522V', 'Fermo', 'Douhaymi', 'Via Carrebbio, 27', '1935-10-18'),
                         ('PRSFNC72C04F657E', 'Franco', 'Parassiani', 'Via Del Casale, 87', '1972-3-4');
                         
INSERT INTO Moderatore VALUES ('FRTCPD88T14A456C'),
							  ('PRSFNC72C04F657E');
                              
INSERT INTO Tutor VALUES ('DHYFRM35R18C522V'),
				         ('PCCBCC73R06D781L');

INSERT INTO Videolezione VALUES (22, 'Storia contemporanea', 'Conosciamo la storia', 01.50, 'DHYFRM35R18C522V'),
								(35, 'Giurisprudenza', 'Ripasso di Giurisprudenza', 02.40, 'PCCBCC73R06D781L');

INSERT INTO appunti VALUES (24, 'Givaa', '2016-11-22', 'tesi', 22, 'PRSFNC72C04F657E'),
						   (30, 'Givaa', '2018-10-30', 'saggi', 10, 'FRTCPD88T14A456C'),
                           (22, 'Elliot', '2017-09-11', 'schema concettuale', 5, 'PRSFNC72C04F657E'),
                           (18, 'Derimax', '2015-11-22', 'tesi', 35, 'FRTCPD88T14A456C'),
                           (300, 'Derimax', '2011-11-02', 'tesi', 25, 'FRTCPD88T14A456C');
						
INSERT INTO acquisto (codiceAppunti, data, usernameAcquirente, numeroCarta, usernameVenditore, idVideolezione) VALUES (24, '2019-12-22', 'Sayril', 3736482213047, 'Givaa', null),
																													  (null, '2018-10-24', 'yantCaccia', 3505371321836, null, 35),
																													  (22, '2019-12-31', 'paglianese', 7482398492889, 'Elliot', null),
																													  (300, '2019-11-21', 'Sayril', 3736482213047, 'Derimax', null);
                            
INSERT INTO Digitale VALUES ('Givaa', 30, 330, 'pdf'),
							('Derimax', 18, 20, 'jpg'),
                            ('Elliot', 22, 5, 'doc');

INSERT INTO Cartaceo VALUES ('Givaa', 24, 130, 23.50),
							('Derimax', 300, 100, null);

INSERT INTO Specializzazione VALUES ('Arte'),
									('Giurisprudenza'),
                                    ('Storia');
                                    
INSERT INTO Possiede VALUES ('Storia', 'DHYFRM35R18C522V'),
							('Giurisprudenza', 'PCCBCC73R06D781L'),
                            ('Arte', 'DHYFRM35R18C522V');
                            
INSERT INTO telefonostaff VALUES (3454323232, 'FRTCPD88T14A456C'),
								 (3313245465, 'PCCBCC73R06D781L'),
                                 (3283445678, 'DHYFRM35R18C522V'),
                                 (3327689574, 'PRSFNC72C04F657E');