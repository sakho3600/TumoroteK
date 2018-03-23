ALTER TABLE EMETTEUR
  ADD CONSTRAINT FK_EMETTEUR_LOGICIEL_ID
      FOREIGN KEY (LOGICIEL_ID)
      REFERENCES LOGICIEL (LOGICIEL_ID);

ALTER TABLE DOSSIER_EXTERNE
  ADD CONSTRAINT FK_DOSSIER_EXTERNE_EMETTEUR_ID
      FOREIGN KEY (EMETTEUR_ID)
      REFERENCES EMETTEUR (EMETTEUR_ID);

ALTER TABLE BLOC_EXTERNE
  ADD CONSTRAINT FK_BLOC_EXTERNE_DOSSIER_EXTERNE_ID
      FOREIGN KEY (DOSSIER_EXTERNE_ID)
      REFERENCES DOSSIER_EXTERNE (DOSSIER_EXTERNE_ID);

ALTER TABLE VALEUR_EXTERNE
  ADD CONSTRAINT FK_VALEUR_EXTERNE_BLOC_EXTERNE_ID
      FOREIGN KEY (BLOC_EXTERNE_ID)
      REFERENCES BLOC_EXTERNE (BLOC_EXTERNE_ID);
      
ALTER TABLE PATIENT_SIP_SEJOUR
  ADD CONSTRAINT FK_SEJOUR_PATIENT_SIP_ID
      FOREIGN KEY (PATIENT_SIP_ID)
      REFERENCES PATIENT_SIP (PATIENT_SIP_ID);   

ALTER TABLE RECEPTEUR
	ADD CONSTRAINT FK_RECEPTEUR_LOGICIEL_ID 
	FOREIGN KEY (LOGICIEL_ID) 
	REFERENCES LOGICIEL (LOGICIEL_ID);

