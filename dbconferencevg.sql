 create database dbConferenceVG;
 /*crear las tablas*/
 create table participante
 (
 IDPAR int auto_increment,
 FECREGPAR date,
NOMPAR varchar(60),
APEPAR varchar(80),
DNIPAR char(8),
TIPPAR char(1),
CELPAR char(9),
EMAPAR varchar(90),
DIRPAR varchar(90),
ESTPAR char(1),
CONSTRAINT IDPAR_PK PRIMARY KEY (IDPAR)
 );
 
 create table ponente
 (
CODPON char(5),
NOMPON varchar(60),
APEPON varchar(80),
CELPON char(8),
DNIPON char(9),
EMAPON varchar(90),
DIRPON varchar(90),
CONSTRAINT CODPN_PK PRIMARY KEY (CODPON)
 );
 
create table conferencia
 (
CODCONF char(5),
TEMCONF varchar(90),
FECCONF date,
PONCONF char(5),
CONSTRAINT CODCONF_PK PRIMARY KEY (CODCONF)
 );

create table registro
 (
CODREG char(5),
CODPAR int,
FECREG date,
CERTREG char(1),
CONSTRAINT CODREG_PK PRIMARY KEY (CODREG)
 );
 
create table registrodetalle
 (
IDREGDET int,
CODREG char(5),
CODCONF char(5),
CANTPART int,
CONSTRAINT IDREGDET_PK PRIMARY KEY (IDREGDET)
 );
 
 ALTER TABLE participante 
 ADD CONSTRAINT participante_registro FOREIGN KEY (ESTPAR) REFERENCES registro (CODREG);
 
  ALTER TABLE registro 
 ADD CONSTRAINT registro_registrodetalle FOREIGN KEY (CODPAR) REFERENCES registrodetalle (IDREGDET);
 
  ALTER TABLE conferencia 
 ADD CONSTRAINT conferencia_registrodetalle FOREIGN KEY (PONCONF) REFERENCES registrodetalle (IDREGDET);
 
  ALTER TABLE ponente 
 ADD CONSTRAINT ponente_conferencia FOREIGN KEY (DIRPON) REFERENCES conferencia (CODCONF);
 
 
insert into  participante
 (IDPAR,FECREGPAR, NOMPAR,APEPAR,DNIPAR,TIPPAR,CELPAR,EMAPAR,DIRPAR,ESTPAR)
values
(" "," "," "," ")


 
 
 




     
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
