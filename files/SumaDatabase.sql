--\i E:/Projects/Suma/files/SumaDatabase.sql
CREATE USER "Suma" PASSWORD '123';
ALTER ROLE "Suma" WITH SUPERUSER;
CREATE DATABASE "SumaDatabase" WITH OWNER "Suma";
GRANT ALL PRIVILEGES ON DATABASE "SumaDatabase" TO "Suma";

DROP DATABASE "SumaDatabase";
DROP USER "Suma";

\connect SumaDatabase Suma localhost 5432
\connect postgres postgres localhost 5432


CREATE TABLE Personal (
  ID_Per INTEGER NOT NULL,
);

CREATE TABLE "user" (
  id SERIAL PRIMARY KEY,
  nombres varchar(255) default NULL,
  apellidos varchar(255) default NULL,
  usuario varchar(255),
  password TEXT default NULL,
  fecha_registro varchar(255)
);

INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (1,'Lani','Blair','Tortor Nunc Limited','iaculis','16/03/2020'),(2,'Pearl','Spencer','Rutrum Company','eu','03/10/2020'),(3,'Odette','Nolan','Nunc LLP','lacus','22/10/2020'),(4,'Tara','Frank','Morbi Non Sapien Incorporated','egestas.','07/01/2020'),(5,'Kellie','Koch','Duis A Consulting','sit','28/10/2019'),(6,'Alana','Stephenson','Quis Corporation','eget','02/08/2019'),(7,'Trevor','Townsend','Lacinia Vitae Sodales Ltd','sed','30/01/2020'),(8,'Alexander','Watkins','Imperdiet Ullamcorper Duis LLC','Morbi','18/10/2020'),(9,'Amal','Quinn','Proin Dolor Nulla Incorporated','nulla.','05/11/2019'),(10,'Zahir','Landry','Libero Dui Incorporated','vel,','24/11/2019');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (11,'Clark','Blankenship','Mauris Erat Company','Phasellus','31/07/2019'),(12,'Rooney','Rivers','Duis Ltd','sit','10/07/2020'),(13,'Caesar','Conway','Mi Pede Nonummy PC','iaculis','06/01/2020'),(14,'Grace','Goodwin','Faucibus Lectus A Consulting','Vestibulum','24/11/2019'),(15,'Erich','Gill','Neque Nullam Nisl Foundation','aliquam','07/12/2020'),(16,'Dale','Solomon','Justo Eu Arcu LLC','Etiam','20/11/2020'),(17,'Natalie','Kirk','Velit Eget Limited','a','26/10/2019'),(18,'Carter','Christian','Dolor Quam Elementum Company','risus.','19/04/2021'),(19,'Simone','Whitaker','Nulla Associates','sociis','26/12/2020'),(20,'Isaiah','Schneider','Dolor Vitae Company','Fusce','22/04/2020');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (21,'Regan','Shelton','Ligula Industries','quis','13/11/2020'),(22,'Anika','Nolan','Lectus Industries','Donec','18/06/2020'),(23,'Palmer','Carey','Mus Proin Vel Limited','interdum.','31/12/2019'),(24,'Ivory','Ingram','Metus Aliquam Inc.','amet','27/05/2021'),(25,'Sylvia','David','Duis Corporation','sem,','19/06/2020'),(26,'Lewis','Gregory','Vulputate Posuere Vulputate PC','tellus.','03/02/2021'),(27,'Martin','Finley','Augue Sed Industries','eget','16/05/2021'),(28,'Phoebe','Pitts','Leo Cras Corp.','enim','19/04/2021'),(29,'Myra','Stafford','Posuere Institute','sapien','07/12/2020'),(30,'Noah','Chen','Pede Praesent Eu Consulting','sed','22/04/2020');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (31,'Haviva','Diaz','Eget Associates','libero','15/10/2019'),(32,'Macey','Johnston','Duis Risus Foundation','ac','12/03/2021'),(33,'Cadman','Horne','Massa Rutrum Company','justo.','04/12/2020'),(34,'Phillip','Franklin','Mollis Associates','orci','16/01/2021'),(35,'Brynn','Perkins','Lectus Pede Ultrices Company','vel,','19/09/2019'),(36,'Sloane','Sanford','Placerat Incorporated','enim.','19/10/2020'),(37,'Amethyst','Blackwell','Commodo Tincidunt LLP','Nullam','07/01/2020'),(38,'Rosalyn','Lee','Gravida Industries','metus','02/12/2020'),(39,'Gillian','Beach','Porttitor Scelerisque Foundation','sapien.','01/11/2020'),(40,'Tara','Dean','Sagittis Semper Nam Industries','tincidunt.','05/02/2021');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (41,'Darius','Cook','Lectus Rutrum Consulting','dapibus','27/02/2020'),(42,'Hanae','Jimenez','Dolor Sit Amet Company','cursus','26/08/2019'),(43,'Hamish','Stein','Commodo Hendrerit Corporation','faucibus','10/12/2019'),(44,'Emerald','Carney','Varius Ultrices Mauris Institute','id,','05/04/2020'),(45,'Armando','Velasquez','Ligula LLP','ante','19/05/2021'),(46,'Alma','Pope','Cursus Et Eros Limited','lorem','18/06/2021'),(47,'Barrett','Dickson','Semper Et Lacinia Corp.','pellentesque.','04/09/2020'),(48,'Yardley','Hodge','A Magna Lorem Limited','ornare.','22/01/2020'),(49,'Zeus','Ellis','Pharetra Corp.','Donec','06/12/2020'),(50,'Rhiannon','Todd','Maecenas Libero Est Corporation','Nam','08/11/2019');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (51,'Colt','Evans','Semper Pretium Neque Industries','Quisque','13/02/2020'),(52,'Hillary','Mcgee','Id Blandit Associates','dui.','22/04/2021'),(53,'Ralph','Terrell','Mollis Nec Cursus Ltd','faucibus','26/05/2021'),(54,'Olga','Garcia','Dapibus Ligula Aliquam Corp.','tincidunt,','21/04/2020'),(55,'Isaiah','Lynch','Nibh Corp.','rutrum.','18/11/2020'),(56,'Sybil','Calderon','Dis Parturient Foundation','malesuada.','03/06/2020'),(57,'Hashim','Floyd','Penatibus Et Associates','Cras','22/04/2020'),(58,'Desiree','Roman','Vivamus Rhoncus Donec LLC','dui.','13/08/2020'),(59,'Regina','Hansen','Iaculis Aliquet Diam Consulting','lorem','20/05/2021'),(60,'Grant','Joyner','Lorem Ipsum Consulting','iaculis','06/11/2020');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (61,'Chava','Blair','Libero Est Congue Foundation','nulla','01/08/2020'),(62,'Whilemina','Bauer','Ac LLC','sociis','08/04/2020'),(63,'Hayes','Mayer','Vivamus Rhoncus Company','Quisque','10/12/2020'),(64,'Darrel','Hays','Erat Etiam Corporation','senectus','18/03/2021'),(65,'Hayden','Page','Ut PC','natoque','16/06/2021'),(66,'Kevin','Ingram','Est Nunc Industries','nulla','29/05/2021'),(67,'Hashim','Parrish','Suspendisse Sed Dolor Company','odio','28/02/2021'),(68,'Sylvia','Benjamin','Urna Corporation','consectetuer','18/06/2020'),(69,'Lane','Nunez','Dolor Tempus PC','hendrerit','10/10/2020'),(70,'Grace','Cabrera','A Facilisis Inc.','et,','05/01/2020');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (71,'Salvador','Harmon','Fusce Fermentum Fermentum PC','ridiculus','26/07/2019'),(72,'Bruce','Gould','Tellus Nunc Company','ac','16/09/2020'),(73,'Hadassah','Hampton','Quisque LLP','eu','12/04/2021'),(74,'Keaton','Mccoy','Nascetur LLP','lectus','08/09/2020'),(75,'Wynter','Ortega','Tellus Faucibus Company','Cras','19/12/2019'),(76,'Rhea','Delaney','Quisque Company','mattis','12/08/2019'),(77,'Madeline','Rollins','Mollis Vitae Posuere Corporation','luctus,','21/03/2021'),(78,'Shellie','Irwin','Leo Elementum LLP','vestibulum,','10/02/2020'),(79,'Gail','Singleton','Facilisis Incorporated','Duis','07/08/2020'),(80,'Vera','Dyer','Dapibus Incorporated','tellus','18/03/2020');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (81,'Allistair','Morales','Mi Lorem Vehicula Industries','scelerisque','28/04/2020'),(82,'Dominic','Nichols','Auctor Consulting','egestas.','12/04/2021'),(83,'Cally','Hicks','Convallis Est Vitae Foundation','dapibus','04/11/2020'),(84,'Neve','Orr','Tellus Faucibus Leo Foundation','Duis','04/08/2020'),(85,'Linus','Hull','Montes Nascetur Ridiculus Foundation','amet','14/10/2019'),(86,'Cooper','George','Urna Nec Luctus Associates','ultrices.','27/06/2021'),(87,'Henry','Campos','Nisi A Odio PC','consectetuer','17/01/2020'),(88,'August','Bray','Vitae Sodales Company','eget','10/06/2021'),(89,'Ursa','Bennett','Lobortis Augue Scelerisque Corporation','nisi','06/07/2021'),(90,'Lillith','Farrell','Nibh Lacinia Orci PC','orci.','01/08/2020');
INSERT INTO "user" (id,nombres,apellidos,usuario,password,fecha_registro) VALUES (91,'Deborah','Odonnell','Fusce Aliquam Consulting','non,','05/06/2021'),(92,'Teegan','Boone','Ipsum Foundation','convallis','01/11/2019'),(93,'Winifred','Sanford','Suspendisse Commodo Tincidunt Company','sem','05/02/2020'),(94,'Alyssa','Russo','Montes LLC','nisi','19/11/2020'),(95,'Angelica','Casey','Neque Et Corp.','dui,','08/02/2020'),(96,'Michael','Ayers','Consequat Limited','varius','10/04/2020'),(97,'Vance','Whitehead','Natoque Incorporated','a,','27/09/2020'),(98,'Bradley','Warner','Adipiscing Enim Mi Limited','ornare','09/12/2020'),(99,'Kyle','Diaz','Ligula Donec Limited','sodales','17/02/2020'),(100,'Alana','Hurst','Quis Tristique Ac Ltd','amet','16/02/2021');



































