﻿/*!**********************************************************************************************
************************************************************************************************
MACROER FOR Å KOBLINGS_ID 

************************************************************************************************
***********************************************************************************************/

/***********************
*** Avdelingsopphold ***
***********************/

%macro KoblingsID_avd (innDataSett=, utDataSett=);

/*!
Lager unik variabel *KoblingsID* for hver linje i avdelingsoppholdsfil

13 siffer. Begynner med 171ÅR der ÅR = 16 for 2016 

*/

proc sort data=&innDataSett;
by PID inndato utdato;
run;

data &utDataSett;
set &innDataSett;
by PID InnDato Utdato;

If aar = 2016 then do;
count +1;
KoblingsID = count + 1711600000000;
end;

If aar = 2015 then do;
count +1;
KoblingsID = count + 1711500000000;
end;

If aar = 2014 then do;
count +1;
KoblingsID = count + 1711400000000;
end;


If aar = 2013 then do;
count +1;
KoblingsID = count + 1711300000000;
end;

If aar = 2012 then do;
count +1;
KoblingsID = count + 1711200000000;
end;
format koblingsID 32.;
run;

%mend KoblingsID_avd;

/*********************
*** Sykehusopphold ***
*********************/

%macro KoblingsID_sho (innDataSett=, utDataSett=);

/*!
Lager unik variabel *KoblingsID* for hver linje i sykehusoppholdsfil

13 siffer. Begynner med 172ÅR der ÅR = 16 for 2016 

*/


proc sort data=&innDataSett;
by PID inndato utdato;
run;

data &utDataSett;
set &innDataSett;
by PID InnDato Utdato;

If aar = 2016 then do;
count +1;
KoblingsID = count + 1721600000000;
end;

If aar = 2015 then do;
count +1;
KoblingsID = count + 1721500000000;
end;

If aar = 2014 then do;
count +1;
KoblingsID = count + 1721400000000;
end;


If aar = 2013 then do;
count +1;
KoblingsID = count + 1721300000000;
end;

If aar = 2012 then do;
count +1;
KoblingsID = count + 1721200000000;
end;
format koblingsID 32.;
run;

%mend KoblingsID_sho;



%macro KoblingsID_avtspes (innDataSett=, utDataSett=);

/*!
Lager unik variabel *KoblingsID* for hver linje i avtalespesialistfil

13 siffer. Begynner med 173ÅR der ÅR = 16 for 2016 

*/


proc sort data=&innDataSett;
by PID inndato utdato;
run;

data &utDataSett;
set &innDataSett;
by PID InnDato Utdato;


If aar = 2016 then do;
count +1;
KoblingsID = count + 1731600000000;
end;


If aar = 2015 then do;
count +1;
KoblingsID = count + 1731500000000;
end;

If aar = 2014 then do;
count +1;
KoblingsID = count + 1731400000000;
end;


If aar = 2013 then do;
count +1;
KoblingsID = count + 1731300000000;
end;

If aar = 2012 then do;
count +1;
KoblingsID = count + 1731200000000;
end;

format koblingsID 32.;
run;

%mend KoblingsID_avtspes;

