/*==============================================================*/
/* Version 2.11 : TABLES ENREGISTREMENT CONFIG PERSONNALISABLE  */
/* USER INTERACE           										*/
/* Date: 14 Juillet 2014										*/
/*==============================================================*/
CREATE TABLE UI_REQUETE (
  	UI_REQUETE_ID INT(10) NOT NULL,
 	NOM VARCHAR(250) NOT NULL,
	UTILISATEUR_ID INT(10) NOT NULL,
	ENTITE_ID INT(10) NOT NULL,
	ORDRE INT(3) NOT NULL,
  	PRIMARY KEY (UI_REQUETE_ID)
) ENGINE=InnoDB;

ALTER TABLE UI_REQUETE
  ADD CONSTRAINT FK_UI_REQ_UTIL_ID
      FOREIGN KEY (UTILISATEUR_ID)
      REFERENCES UTILISATEUR (UTILISATEUR_ID);

ALTER TABLE UI_REQUETE
	ADD CONSTRAINT FK_UI_REQ_ENTITE_ID
		FOREIGN KEY (ENTITE_ID) 
		REFERENCES ENTITE (ENTITE_ID);
		
CREATE TABLE UI_COMP_VALUE (
  	UI_COMP_VALUE_ID INT(10) NOT NULL,
  	UI_REQUETE_ID INT(10) NOT NULL,
 	ID_COMPONENT VARCHAR(50) NOT NULL,
 	COMPONENT_CLASS VARCHAR(50) NOT NULL,
 	INDEX_VALUE INT(2),
	TEXT_VALUE VARCHAR(300),
	CHECK_VALUE BOOLEAN,
	CALENDAR_VALUE DATETIME,
  	PRIMARY KEY (UI_COMP_VALUE_ID)
) ENGINE=InnoDB;

ALTER TABLE UI_COMP_VALUE
	ADD CONSTRAINT FK_UI_COMP_REQ_ID
		FOREIGN KEY (UI_REQUETE_ID) 
		REFERENCES UI_REQUETE (UI_REQUETE_ID);

-- historique? 
CREATE TABLE UI_ENTITE (
  UI_ENTITE_ID INT(2) NOT NULL,
  NOM varchar(25) NOT NULL,
  PRIMARY KEY (UI_ENTITE_ID)
) ENGINE=InnoDB;

CREATE TABLE UI_OPERATION_TYPE (
  UI_OPERATION_TYPE_ID INT(2) NOT NULL,
  NOM varchar(25) NOT NULL,
  PROFILABLE tinyint(1) NOT NULL,
  PRIMARY KEY (UI_OPERATION_TYPE_ID)
) ENGINE=InnoDB;

CREATE TABLE  UI_OPERATION (
  UI_OPERATION_ID INT(10) NOT NULL AUTO_INCREMENT,
  UTILISATEUR_ID INT(10) DEFAULT NULL,
  DATE_ datetime NOT NULL,
  OBJET_ID INT(10) NOT NULL,
  UI_OPERATION_TYPE_ID INT(2) NOT NULL,
  UI_ENTITE_ID INT(2) NOT NULL,
  PRIMARY KEY (UI_OPERATION_ID)
) ENGINE=InnoDB;

ALTER TABLE UI_OPERATION 
  ADD CONSTRAINT FK_UI_OPERATION_ENTITE_ID 
  FOREIGN KEY (UI_ENTITE_ID) REFERENCES UI_ENTITE (UI_ENTITE_ID);
  
ALTER TABLE UI_OPERATION  
  CONSTRAINT FK_UI_OPERATION_TYPE_ID 
  FOREIGN KEY (UI_OPERATION_TYPE_ID) REFERENCES UI_OPERATION_TYPE (UI_OPERATION_TYPE_ID);
  
ALTER TABLE UI_OPERATION 
  CONSTRAINT FK_UI_OPERATION_UTILISATEUR_ID 
  FOREIGN KEY (UTILISATEUR_ID) REFERENCES UTILISATEUR (UTILISATEUR_ID);


