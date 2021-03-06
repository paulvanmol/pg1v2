***********************************************************;
*  LESSON 3, PRACTICE 6 SOLUTION                          *;
***********************************************************;

%let ParkCode=ZION;
%let SpeciesCat=Bird;

proc freq data=pg1.np_species;
	tables Abundance Conservation_Status;
	where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
run;

proc print data=pg1.np_species;
	var Species_ID Category Scientific_Name Common_Names;
	where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
run;

