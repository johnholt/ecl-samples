IMPORT AACT;
fName := AACT.FileName_Prefix + 'facilities_txt';
Facilities := RECORD
  STRING FACILITY_ID;
  STRING NCT_ID;
  STRING STATUS;
  STRING FACILITY_NAME;
  STRING CITY;
  STRING STATE;
  STRING ZIP;
  STRING COUNTRY;
END;
ds := DATASET(fName, Facilities, CSV(HEADING(1),SEPARATOR('|'),TERMINATOR('\r\n')));

EXPORT File_Facilities := ds;