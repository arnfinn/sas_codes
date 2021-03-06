
%Macro LablerFormater (innDataSett=, utDataSett=);

/*!*************************************
*** 3. Legger p� formater og labler ***
******'*******************************/

Data &Utdatasett;
set &Inndatasett;

label aar='�r (NPR)';
%if &somatikk ne 0 %then %do;
label Aktivitetskategori='Aktivitetskatgori 10-delt (SAMDATA)'; format Aktivitetskategori AKTIVITETSKATEGORI.; 
label Aktivitetskategori2='Aktivitetskatgori 2-delt (SAMDATA)'; format Aktivitetskategori2 AKTIVITETSKATEGORI2F.; 
label Aktivitetskategori3='Aktivitetskatgori 3-delt (SAMDATA)'; format Aktivitetskategori3 AKTIVITETSKATEGORI3F.; 
label Aktivitetskategori4='Aktivitetskatgori 4-delt (SAMDATA)'; format Aktivitetskategori4 AKTIVITETSKATEGORI4F.; 
%end;
label Alder='Alder (SKDE)';
%if &somatikk ne 0 %then %do;
label behandlingsstedKode2='Behandlingssted (NPR)'; format behandlingsstedKode2 BEHANDLINGSSTEDKODE2F.; 
label behandlingsstedKode_original='Behandlingssted som innrapportert, identifiserer str�leterapienheter (NPR-melding)'; format behandlingsstedKode_original; 
label BehHF='Behandlende HF (SKDE)'; format BehHF behHF.; 
label behRHF='Behandlende RHF (SKDE)'; format BehRHF behRHF.; 
label BehSh='Behandlende sykehus (SKDE)'; format BehSh BehSh.; 
%end;
label BoHF='Opptaksomr�de (HF) (SKDE)'; format BoHF boHF_kort.; 
label BoRHF='Opptaksomr�de (RHF) (SKDE)'; format BoRHF boRHF.; 
label BoShHN='Opptaksomr�de (sykehus HN) (SKDE)';format BoShHN boshHN.; 

%if &somatikk ne 0 %then %do;
label drg='Diagnoserelatert gruppe (NPK)';
label dag_kir='Dagkirurgiske DRG (NPR)';
label niva='Niv� p� episode (NPK)';
label korrvekt='Korrigert vekt (NPK)';
label vekt='DRG-vekt (NPK)';
label trimpkt='Trimpunkt (NPK)';
label drg_type='Type DRG (NPK)'; format DRG_type DRG_type.; 
label komp_drg='Kompliserende DRG (NPK)'; format KOMP_DRG $KOMP_DRG.;
label dag_kir='Dagkirurgisk DRG (NPK)'; format dag_kir $DAG_KIR.;
label spes_drg='Spesifikk DRG (NPK)'; format SPES_DRG $SPES_DRG.;
label rehabType='Type rehabilitering (NPK)'; format rehabType REHABTYPE.;
label utforendeHelseperson='Utf�rende helsepersonell (NPK)'; format UTFORENDEHELSEPERSON UTFORENDEHELSEPERSON.;
label polIndirekteAktivitet='polIndirekteAktivitet (NPK)'; format polIndirekteAktivitet POLINDIR.;
lable polIndir='Indirekte aktiviteter (NPR-melding)'; format polIndir POLINDIR.;
label aggrshoppID='Id for aggregert sykehusopphold (NPK)'; 
label hdg='Hoveddiagnosegruppe (NPK)'; format HDG HDG.; 

label polUtforende_1='Utf�rende helsepersonell 1 (NPK)'; format POLUTFORENDE_1 POLUTFORENDE_1F.;
label polUtforende_2='Utf�rende helsepersonell 2 (NPK)'; format POLUTFORENDE_2 POLUTFORENDE_2F.;
label isf_opphold='ISF-opphold (NPR)'; format ISF_OPPHOLD ISF_OPPHOLD.;
label pakkeforlop='Pakkeforl�p kreft (NPR-melding)'; format pakkeforlop pakkeforlop.;
/*label kommTjeneste='Kommunal tjeneste (NPR-melding)'; format kommTjeneste kommTjeneste.; - Fra 2016*/
label relatertKontaktID='Id for relaterte kontakter (NPK)';
label henvType='Utfall av vurdering av henvisningen (NPR-melding)'; format henvType henvType.;

label henvFraTjeneste='Henvist fra tjeneste (NPK)'; format HENVFRATJENESTE HENVFRATJENESTE.;
label henvFraInstitusjonID='Henvist fra institusjon (NPK)'; /*format HENVFRAINSTITUSJONID HENVFRAINSTITUSJONID.;*/
label frittSykehusvalg='Fritt sykehusvalg (NPK)'; format FRITTSYKEHUSVALG FRITTSYKEHUSVALG.;
label secondOpinion='Second Opinion (NPK)'; format SECONDOPINION SECONDOPINION.;
label fraSted='Fra sted (NPK)'; format frasted frasted.;
label tilSted='Til sted (NPK)'; format tilsted tilsted.;

label Hastegrad='Hastegrad - akutt/elektivt (SKDE)'; format hastegrad Hastegrad.;
label DRGtypeHastegrad='Kombinert DRG-type og hastegrad (SKDE)'; format DRGtypeHastegrad DRGtypeHastegrad.; 
%end;

label erMann='Er mann (kj�nn, mann=1) (SKDE)'; format ErMann ErMann.; 
label kjonn='Kj�nn (NPR-melding)'; format kjonn kjonn.; 
label Fylke='Fylke (pasientens bosted) (SKDE)'; format Fylke fylke.; 

label ICD10Kap='ICD-10 kapittel for f�rste kode hovedtilstand (ICD-10/SKDE)'; format ICD10Kap ICD10Kap.;
label ICD10KatBlokk='ICD-10 kategoriblokk for f�rste kode hovedtilstand (ICD-10/SKDE)'; format ICD10KatBlokk ICD10KatBlokk.; 

label innmateHast='Hastegrad ved ankomst (NPR-melding)'; format innmateHast innmateHast.; 

%if &somatikk ne 0 %then %do;
label innmnd='Innskrivelsesm�ned (NPR)'; 
label utmnd='Utskrivelsesm�ned (NPR)';
label innTid='Innskrivelsestidspunkt (NPR-melding)'; *format innTid Eurdfdd10.; 
label utTid='Utskrivelsestidspunkt (NPR-melding)'; *format utTid Eurdfdd10.; 
%end;
label innDato='Innskrivelsesdato (NPR-melding)';
label utDato='Utskrivelsesdato (NPR-melding)';
%if &somatikk ne 0 %then %do;
label utskrKlarDato='Utskrivningsklar dato (NPR-melding)';
label tidspunkt_1='F�rst dato for utskrivingsklar pasient';
label tidspunkt_2='Andre dato for utskrivingsklar pasient';
label tidspunkt_3='Tredje dato for utskrivingsklar pasient';
label tidspunkt_4='Fjerde dato for utskrivingsklar pasient';
label tidspunkt_5='Femte dato for utskrivingsklar pasient';
%end;
label InstitusjonID='Org.nr. til rapporteringsenhet (NPR-melding)'; format InstitusjonId InstitusjonId.;
%if &somatikk ne 0 %then %do;
label InstitusjonID_original='Org.nr. til rapporteringsenhet, identifiserer str�leterapienheter (NPR-melding)'; format InstitusjonId InstitusjonID_original.;
label kontaktType='Kontakttype (NPR-melding)'; format kontaktType kontaktType.; 
label komNrHjem2='Kommunenummer vasket mot Folkeregisteret (NPR-melding)'; format KomNrHjem2 $KOMNRHJEM2F.; 
%end;
label KomNR='Kommunenummer vasket mot Folkeregisteret, numerisk (NPR-melding/SKDE)'; 
label bydel2='Bydel vasket mot Folkeregisteret (NPR)';
%if &somatikk ne 0 %then %do;
label bydel2_num='Bydel vasket mot Folkeregisteret (NPR), numerisk';
%end;
label bydel='Bydel i Oslo, Bergen, Stavanger og Trondhem vasket mot Folkeregisteret (SKDE)'; format bydel bydel_alle.;
%if &somatikk ne 0 %then %do;
label bydel_DSF='Bydel fra Folkeregisteret (NPR)';

label g_omsorgsniva='Gammelt omsorgsniv� (NPR)'; format g_omsorgsniva g_omsorgsniva.; 
label liggetid='Liggetid (NPK og NPR)';
label omsorgsniva='Omsorgsniv� (NPR-melding)'; format omsorgsniva omsorgsniva.; 
label oppholdstype='Oppholdstype (NPR-melding)'; format oppholdstype oppholdstype.; 

label VertskommHN='Vertskommune (HN) (SKDE)'; format VertskommHN VertskommHN.; 
label tjenesteenhetKode='Avdelingskode (NPR-melding)';
label utskrKlarDager='Ligged�gn som utskrivingsklar (NPR)';
label versjon='Versjon av NPR-melding (NPR-melding)';

label komp_drg='Kompliserende DRG (NPR)'; format komp_drg komp_drg.; 
label korrvekt='Korrigert vekt (NPK)';
label trimpkt='Trimpunkt (NPK)';
label innTid='Innskrivelsestidspunkt (NPR-melding)';
label utmnd='Utskrivelsesm�ned (NPR)';
label utTilstand='Tilstand ved utskriving (NPR-melding)'; format utTilstand utTilstand.; 

label fodselsAar_ident='F�dsels�r fra personnr - ident-info fra nasjonal fil (NPR)';
label kjonn_ident='Kj�nn fra personnr - ident info-info fra nasjonal fil (NPR)'; format kjonn_ident kjonn.;   
label fodt_mnd='F�dselsm�ned fra personnr - ident-info fra nasjonal fil (NPR)';
%end;
label Hdiag='Hovedtilstand kode 1 (ICD-10/NPR-melding/SKDE)';
label Hdiag2='Hovedtilstand kode 2 (ICD-10/NPR-melding/SKDE)';
label Hdiag3tegn='Hovedtilstand kode 1, 3 tegn (ICD-10/NPR-melding/SKDE)'; format Hdiag3tegn $hdiag3tegn.; 
label Bdiag1='Bitilstand kode 1 (ICD-10/NPR-melding/SKDE)';
label Bdiag2='Bitilstand kode 2 (ICD-10/NPR-melding/SKDE)';
label Bdiag3='Bitilstand kode 3 (ICD-10/NPR-melding/SKDE)';
label Bdiag4='Bitilstand kode 4 (ICD-10/NPR-melding/SKDE)';
label Bdiag5='Bitilstand kode 5 (ICD-10/NPR-melding/SKDE)';
label Bdiag6='Bitilstand kode 6 (ICD-10/NPR-melding/SKDE)';
label Bdiag7='Bitilstand kode 7 (ICD-10/NPR-melding/SKDE)';
label Bdiag8='Bitilstand kode 8 (ICD-10/NPR-melding/SKDE)';
label Bdiag9='Bitilstand kode 9 (ICD-10/NPR-melding/SKDE)';
label Bdiag10='Bitilstand kode 10 (ICD-10/NPR-melding/SKDE)';
%if &somatikk ne 0 %then %do;
label Bdiag11='Bitilstand kode 11 (ICD-10/NPR-melding/SKDE)';
label Bdiag12='Bitilstand kode 12 (ICD-10/NPR-melding/SKDE)';
label Bdiag13='Bitilstand kode 13 (ICD-10/NPR-melding/SKDE)';
label Bdiag14='Bitilstand kode 14 (ICD-10/NPR-melding/SKDE)';
label Bdiag15='Bitilstand kode 15 (ICD-10/NPR-melding/SKDE)';
label Bdiag16='Bitilstand kode 16 (ICD-10/NPR-melding/SKDE)';
label Bdiag17='Bitilstand kode 17 (ICD-10/NPR-melding/SKDE)';
label Bdiag18='Bitilstand kode 18 (ICD-10/NPR-melding/SKDE)';
label Bdiag19='Bitilstand kode 19 (ICD-10/NPR-melding/SKDE)';
%end;
format Hdiag: Bdiag: $icd10f.;
label ncmp1='NCMP kode 1 (NCMP/NPR-melding/SKDE)'; label ncmp2='NCMP kode 2 (NCMP/NPR-melding/SKDE)'; 
label ncmp3='NCMP kode 3 (NCMP/NPR-melding/SKDE)'; label ncmp4='NCMP kode 4 (NCMP/NPR-melding/SKDE)';
label ncmp5='NCMP kode 5 (NCMP/NPR-melding/SKDE)'; label ncmp6='NCMP kode 6 (NCMP/NPR-melding/SKDE)'; 
label ncmp7='NCMP kode 7 (NCMP/NPR-melding/SKDE)'; label ncmp8='NCMP kode 8 (NCMP/NPR-melding/SKDE)';
label ncmp9='NCMP kode 9 (NCMP/NPR-melding/SKDE)'; label ncmp10='NCMP kode 10 (NCMP/NPR-melding/SKDE)'; 
%if &somatikk ne 0 %then %do;
label ncmp11='NCMP kode 11 (NCMP/NPR-melding/SKDE)'; label ncmp12='NCMP kode 12 (NCMP/NPR-melding/SKDE)';
label ncmp13='NCMP kode 13 (NCMP/NPR-melding/SKDE)'; label ncmp14='NCMP kode 14 (NCMP/NPR-melding/SKDE)'; 
label ncmp15='NCMP kode 15 (NCMP/NPR-melding/SKDE)'; label ncmp16='NCMP kode 16 (NCMP/NPR-melding/SKDE)';
label ncmp17='NCMP kode 17 (NCMP/NPR-melding/SKDE)'; label ncmp18='NCMP kode 18 (NCMP/NPR-melding/SKDE)'; 
label ncmp19='NCMP kode 19 (NCMP/NPR-melding/SKDE)'; label ncmp20='NCMP kode 20 (NCMP/NPR-melding/SKDE)';
%end;
format NCMP: $ncmp.;
label ncsp1='NCSP kode 1 (NCSP/NPR-melding/SKDE)'; label ncsp2='NCSP kode 2 (NCSP/NPR-melding/SKDE)'; label ncsp3='NCSP kode 3 (NCSP/NPR-melding/SKDE)';
label ncsp4='NCSP kode 4 (NCSP/NPR-melding/SKDE)'; label ncsp5='NCSP kode 5 (NCSP/NPR-melding/SKDE)'; label ncsp6='NCSP kode 6 (NCSP/NPR-melding/SKDE)'; 
label ncsp7='NCSP kode 7 (NCSP/NPR-melding/SKDE)'; label ncsp8='NCSP kode 8 (NCSP/NPR-melding/SKDE)'; label ncsp9='NCSP kode 9 (NCSP/NPR-melding/SKDE)'; 
label ncsp10='NCSP kode 10 (NCSP/NPR-melding/SKDE)'; 
%if &somatikk ne 0 %then %do;
label ncsp11='NCSP kode 11 (NCSP/NPR-melding/SKDE)'; label ncsp12='NCSP kode 12 (NCSP/NPR-melding/SKDE)';
label ncsp13='NCSP kode 13 (NCSP/NPR-melding/SKDE)'; label ncsp14='NCSP kode 14 (NCSP/NPR-melding/SKDE)'; label ncsp15='NCSP kode 15 (NCSP/NPR-melding/SKDE)'; 
label ncsp16='NCSP kode 16 (NCSP/NPR-melding/SKDE)'; label ncsp17='NCSP kode 17 (NCSP/NPR-melding/SKDE)'; label ncsp18='NCSP kode 18 (NCSP/NPR-melding/SKDE)'; 
label ncsp19='NCSP kode 19 (NCSP/NPR-melding/SKDE)'; label ncsp20='NCSP kode 20 (NCSP/NPR-melding/SKDE)';
%end;
format NCSP: $ncsp.;
%if &somatikk ne 0 %then %do;
label ncrp1='NCRP kode 1 (NCRP/NPR-melding/SKDE)'; label ncrp2='NCRP kode 2 (NCRP/NPR-melding/SKDE)'; label ncrp3='NCRP kode 3 (NCRP/NPR-melding/SKDE)';
label ncrp4='NCRP kode 4 (NCRP/NPR-melding/SKDE)'; label ncrp5='NCRP kode 5 (NCRP/NPR-melding/SKDE)'; label ncrp6='NCRP kode 6 (NCRP/NPR-melding/SKDE)'; 
label ncrp7='NCRP kode 7 (NCRP/NPR-melding/SKDE)'; label ncrp8='NCRP kode 8 (NCRP/NPR-melding/SKDE)'; label ncrp9='NCRP kode 9 (NCRP/NPR-melding/SKDE)'; 
label ncrp10='NCRP kode 10 (NCRP/NPR-melding/SKDE)'; label ncrp11='NCRP kode 11 (NCRP/NPR-melding/SKDE)'; label ncrp12='NCRP kode 12 (NCRP/NPR-melding/SKDE)';
label ncrp13='NCRP kode 13 (NCRP/NPR-melding/SKDE)'; label ncrp14='NCRP kode 14 (NCRP/NPR-melding/SKDE)'; label ncrp15='NCRP kode 15 (NCRP/NPR-melding/SKDE)'; 
label ncrp16='NCRP kode 16 (NCRP/NPR-melding/SKDE)'; label ncrp17='NCRP kode 17 (NCRP/NPR-melding/SKDE)'; label ncrp18='NCRP kode 18 (NCRP/NPR-melding/SKDE)'; 
label ncrp19='NCRP kode 19 (NCRP/NPR-melding/SKDE)'; label ncrp20='NCRP kode 20 (NCRP/NPR-melding/SKDE)';
format NCRP: $ncrp.;
%end;
label ATC_1='ATC kode 1 (ATC/NPR-melding)'; 
label ATC_2='ATC kode 2 (ATC/NPR-melding)'; 
label ATC_3='ATC kode 3 (ATC/NPR-melding)'; 
label ATC_4='ATC kode 4 (ATC/NPR-melding)'; 
label ATC_5='ATC kode 5 (ATC/NPR-melding)';
%if &somatikk ne 0 %then %do;
label cyto_1='Cytostatika kode 1 (Oncolex/NPR-melding)'; 
label cyto_2='Cytostatika kode 2 (Oncolex/NPR-melding)'; 
label cyto_3='Cytostatika kode 3 (Oncolex/NPR-melding)'; 
label cyto_4='Cytostatika kode 4 (Oncolex/NPR-melding)'; 
label cyto_5='Cytostatika kode 5 (Oncolex/NPR-melding)'; 
%end;
Label PID="Personentydig l�penummer, numerisk (NPR)"; 
label NPRId_reg='Status for kobling mot ident-melding (NPR)';format NPRId_reg NPRId_reg.;
%if &somatikk ne 0 %then %do;
label opphold_id='Generert opphold_id - koblingsn�kkel (NPR)';
label avdOpp_id='Id for avdelingsopphold - generert av NPR (NPR)';
label versjon='Versjon av NPR-melding (NPR-melding)';
label fodselsvekt='F�dselsvekt (NPR-melding)';
label alderIDager='Alder i dager per startdato for episoden (barn < 1 �r) (NPR-melding)';
label fagomrade='Fagomr�de for henvisningen (NPR-melding)'; format fagomrade $fagomrade.; 
label episodeFag='Fagomr�de for Episoden (NPR-melding)'; format episodeFag $fagomrade.; 
%end;
label fodselsar='F�dsels�r (NPR-melding)';
%if &somatikk ne 0 %then %do;
label permisjonsdogn='Permisjonsd�gn (NPR-melding)';
%end;
label debitor='Debitor (NPR-melding)'; format debitor debitor.;
%if &somatikk ne 0 %then %do;
label inntilstand='Tilstand ved ankomst (NPR-melding)'; format inntilstand inntilstand.;
label stedAktivitet='Sted for aktivitet (NPR-melding)'; format STEDAKTIVITET STEDAKTIVITET.;
label intern_kons='Intern konsultasjon p� inneliggende pasient (NPR)'; format INTERN_KONS INTERN_KONS.;
label tjenesteenhetKode='Tjenesteenhet kode (NPR-melding)';
label tjenesteenhetLokal='Tjenesteenhet navn (NPR-melding)';
label tjenesteenhetReshID='Tjenesteenhet ReshID (NPR-melding)';
label fagenhetKode='Fagenhet kode (NPR-melding)';
label fagenhetLokal='Fagenhet navn (NPR-melding)';
label fagenhetReshID='Fagenhet ReshID (NPR-melding)';
label behandlingsstedKode='Behandlingssted kode (NPR-melding)';
label behandlingsstedLokal='Behandlingssted navn (NPR-melding)';
label behandlingsstedReshID='Behandlingssted ReshID (NPR-melding)';
%end;
label tell_ATC='Antall ATC-koder innrapportert (NPR)';
label tell_ICD10='Antall ICD-10-koder innrapportert (NPR)';
label tell_NCMP='Antall NCMP-koder innrapportert (NPR)';
label tell_NCSP='Antall NCSP-koder innrapportert (NPR)';
%if &somatikk ne 0 %then %do;
label tell_NCRP='Antall NCRP-koder innrapportert (NPR)';
label tell_cyto='Antall cytostatika-koder innrapportert (NPR)';
%end;
label KoblingsID='Unik id for p�kobling av variabler (SKDE)'; 

%if &avtspes ne 0 %then %do;
label tell_Normaltariff='Antall normaltariff-koder innrapportert (NPR)';
label fag='Fagomr�de 2011-2014';
label fagLogg='Fagomr�de 2015';
label fag_SKDE='Fagomr�de, harmonisert 2011-2015 (SKDE)'; format FAG_SKDE FAG_SKDE.;
label SpesialistKomHN='Kommunenummer for avtalespesialistens praksis';
label AvtSpesKomHN='Kontakt med avtalespesialist i HN';
label AvtSpes='Kontakt med avtalespesialist';
label AvtRHF='RHFet spesialisten har avtale med';
label Normaltariff1='Normaltariff kode 1'; label Normaltariff2='Normaltariff kode 2';
label Normaltariff3='Normaltariff kode 3'; label Normaltariff4='Normaltariff kode 4';
label Normaltariff5='Normaltariff kode 5'; label Normaltariff6='Normaltariff kode 6';
label Normaltariff7='Normaltariff kode 7'; label Normaltariff8='Normaltariff kode 8';
label Normaltariff9='Normaltariff kode 9'; label Normaltariff10='Normaltariff kode 10';
label Normaltariff11='Normaltariff kode 11'; label Normaltariff12='Normaltariff kode 12';
label Normaltariff13='Normaltariff kode 13'; label Normaltariff14='Normaltariff kode 14';
label Normaltariff15='Normaltariff kode 15';
label Tdiag1='Diagnose som ikke kan sorteres i H/Bi kode 1'; label Tdiag2='Diagnose som ikke kan sorteres i H/Bi kode 2';
label Tdiag3='Diagnose som ikke kan sorteres i H/Bi kode 3'; label Tdiag4='Diagnose som ikke kan sorteres i H/Bi kode 4';
label Tdiag5='Diagnose som ikke kan sorteres i H/Bi kode 5';
label tilSted='Til sted (NPK)'; format tilsted tilsted.;
label ulikt_kjonn='Ulikt kj�nn i innrapportert data og i f.nr./D-nr.)';
/*	
*******************
4.2	Dropper variable
*******************
*/

drop tell_takst;

%end;

run;

%Mend LablerFormater;

