/* compare data received at the end of June with the ones at the beginning of July */

/* keep the June data in NPR18 */
/* save the July data in PSYK_UTV as a temp place - since it is also under skde_sensetiv, and is currently empty */
/* save parallel files under the same name */

/* once the data is compared and everything is ok, then : 
    1. move the June data to Datamottak_Juni folder to delete 
    2. move the July data to NPR18 to use */

proc compare base=npr18.M18_aspesSom13_17 compare=psyk_utv.M18_aspesSom13_17 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_AVD2013_UTLEVERINGSFIL compare=psyk_utv.M18_AVD2013_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVD2014_UTLEVERINGSFIL compare=psyk_utv.M18_AVD2014_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVD2015_UTLEVERINGSFIL compare=psyk_utv.M18_AVD2015_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVD2016_UTLEVERINGSFIL compare=psyk_utv.M18_AVD2016_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVD2017_UTLEVERINGSFIL compare=psyk_utv.M18_AVD2017_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_AVTSPESSOM2013_UTL_FIL compare=psyk_utv.M18_AVTSPESSOM2013_UTL_FIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVTSPESSOM2014_UTL_FIL compare=psyk_utv.M18_AVTSPESSOM2014_UTL_FIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVTSPESSOM2015_UTL_FIL compare=psyk_utv.M18_AVTSPESSOM2015_UTL_FIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVTSPESSOM2016_UTL_FIL compare=psyk_utv.M18_AVTSPESSOM2016_UTL_FIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_AVTSPESSOM2017_UTL_FIL compare=psyk_utv.M18_AVTSPESSOM2017_UTL_FIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_DIALYSE16_17 compare=psyk_utv.M18_DIALYSE16_17 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_PAKKEFORLOP15_17 compare=psyk_utv.M18_PAKKEFORLOP15_17 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_PERSONDATA19062018 compare=psyk_utv.M18_PERSONDATA19062018 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_PROSDATOFIL2013_2017 compare=psyk_utv.M18_PROSDATOFIL2013_2017 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_REHAB14_17 compare=psyk_utv.M18_REHAB14_17 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

proc compare base=npr18.M18_SHO2013_UTLEVERINGSFIL compare=psyk_utv.M18_SHO2013_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SHO2014_UTLEVERINGSFIL compare=psyk_utv.M18_SHO2014_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SHO2015_UTLEVERINGSFIL compare=psyk_utv.M18_SHO2015_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SHO2016_UTLEVERINGSFIL compare=psyk_utv.M18_SHO2016_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SHO2017_UTLEVERINGSFIL compare=psyk_utv.M18_SHO2017_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;

/*  these files are split into the AVD and SHO files 
proc compare base=npr18.M18_SOMATIKKSYKEHUS13_17     compare=psyk_utv.M18_SOMATIKKSYKEHUS13_17 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SOMSH2013_UTLEVERINGSFIL compare=psyk_utv.M18_SOMSH2013_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SOMSH2014_UTLEVERINGSFIL compare=psyk_utv.M18_SOMSH2014_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SOMSH2015_UTLEVERINGSFIL compare=psyk_utv.M18_SOMSH2015_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SOMSH2016_UTLEVERINGSFIL compare=psyk_utv.M18_SOMSH2016_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SOMSH2017_UTLEVERINGSFIL compare=psyk_utv.M18_SOMSH2017_UTLEVERINGSFIL BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
*/

proc compare base=npr18.M18_SYKESTUE13 compare=psyk_utv.M18_SYKESTUE13 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SYKESTUE14 compare=psyk_utv.M18_SYKESTUE14 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SYKESTUE15 compare=psyk_utv.M18_SYKESTUE15 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SYKESTUE16 compare=psyk_utv.M18_SYKESTUE16 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;
proc compare base=npr18.M18_SYKESTUE17 compare=psyk_utv.M18_SYKESTUE17 BRIEF WARNING LISTVAR METHOD=ABSOLUTE;