update CODE_ASSIGNE c, ECHANTILLON e set c.export=1 where e.CODE_ORGANE_EXPORT_ID=c.CODE_ASSIGNE_ID or e.CODE_LES_EXPORT_ID=c.CODE_ASSIGNE_ID;

-- db recherche anapath
update CHAMP_ENTITE set QUERY_CHAMP_ID = 171 where CHAMP_ENTITE_ID = 148 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 173 where CHAMP_ENTITE_ID = 150 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 176 where CHAMP_ENTITE_ID = 151 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 199 where CHAMP_ENTITE_ID = 153 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 194 where CHAMP_ENTITE_ID = 154 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 199 where CHAMP_ENTITE_ID = 156 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 188 where CHAMP_ENTITE_ID = 157 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 199 where CHAMP_ENTITE_ID = 159 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 206 where CHAMP_ENTITE_ID = 160 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 190 where CHAMP_ENTITE_ID = 165 and QUERY_CHAMP_ID is null;

-- db recherche hemato
update CHAMP_ENTITE set CAN_IMPORT = 1 where CHAMP_ENTITE_ID = 146 and CAN_IMPORT = 0 and ENTITE_ID = 5;
update CHAMP_ENTITE set CAN_IMPORT = 1 where CHAMP_ENTITE_ID >= 148 and CHAMP_ENTITE_ID <= 167 and CAN_IMPORT = 0 and ENTITE_ID = 5;

update CHAMP_ENTITE set QUERY_CHAMP_ID = 171 where CHAMP_ENTITE_ID = 148 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 173 where CHAMP_ENTITE_ID = 150 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 176 where CHAMP_ENTITE_ID = 151 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 199 where CHAMP_ENTITE_ID = 153 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 194 where CHAMP_ENTITE_ID = 154 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 199 where CHAMP_ENTITE_ID = 156 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 188 where CHAMP_ENTITE_ID = 157 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 199 where CHAMP_ENTITE_ID = 159 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 206 where CHAMP_ENTITE_ID = 160 and QUERY_CHAMP_ID is null;
update CHAMP_ENTITE set QUERY_CHAMP_ID = 190 where CHAMP_ENTITE_ID = 165 and QUERY_CHAMP_ID is null;

