%macro reinnleggelser_hjelp;

%put ================================================================================;
%put Reinnleggelser-makro - opprettet av Arnfinn 1. des. 2016 ;
%put Makro for � markere EoC som er en reinnleggelse ;
%put Makroen Episode_of_care m� v�re kj�rt f�r reinnleggelse-makroen;
%put ;
%put NOTE: reinnleggelser(dsn=, ReInn_Tid = 30, eks_diag=1, primaer = alle, forste_utdato =0, siste_utdato ='31Dec2020'd);
%put dsn:             datasett man utf�rer analysen p�;
%put ReInn_Tid (=30): tidskrav i dager mellom prim�ropphold og et eventuelt reinnleggelsesopphold;
%put eks_diag (=1):   Hvis ulik 0, innleggelser som inneholder hoved- eller bi-diagnoser, som brukt av kunnskapssenteret, er ikke en reinnl.;
%put primaer (=alle): Markere opphold som har primaer = 1 som prim�ropphold.;
%put forste_utdato (=0): Kun regne prim�re innleggelser etter denne dato;
%put siste_utdato (='31Dec2020'd): Ikke regne prim�re innleggelser etter denne dato;
%put ;
%put Alle avdelingsopphold i en EoC som er en reinnleggelse blir markert som det (EoC_reinnleggelse = 1);
%put Man kan s� i ettertid telle opp antall opphold som er en reinnleggelse.;
%put ;
%put Eksempel:;
%put reinnleggelser(dsn=mittdatasett, ReInn_Tid = 14, primaer = kols, forste_utdato ='18Dec2012', siste_utdato ='17Dec2015'd);
%put Vil markere alle innleggelser som har kols = 1 som prim�rinnleggelser;
%put (variablen kols m� v�re definert p� forh�nd). Innleggelser med utskrivelsesedato;
%put fra og med 14 dager f�r nytt�r f�rste �r til og med 14 dager f�r nytt�r siste �r;
%put teller som prim�rinnleggelser. Alle akutte innleggelser,;
%put som ikke har en av de ekskluderte diagnosene, som skjer innen 14 dager;
%put etter en prim�rinnleggelse, vil bli markert som en reinnleggelse;
%put ================================================================================;

%mend;
