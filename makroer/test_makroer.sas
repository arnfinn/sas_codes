%macro test_makroer(branch=master, lagNyRef = 0, lagNyStart = 0);
/*!
Makro som skal teste de andre makroene.

Tester for �yeblikket makroene
- `Episode_of_care`
- `reinnleggelser`
- `boomraader`
- `aggreger`
- `unik_pasient`
- `hyppigste`

*/

%local filbane;
%let filbane=\\tos-sas-skde-01\SKDE_SAS\felleskoder\&branch;

%include "&filbane\makroer\tests\episode_of_care_test.sas";
%episode_of_care_test(branch=&branch, lagNyRef = &lagNyRef, lagNyStart = &lagNyStart);

%include "&filbane\makroer\tests\reinnleggelser_test.sas";
%reinnleggelser_test(branch=&branch, lagNyRef = &lagNyRef, lagNyStart = &lagNyStart);

%include "&filbane\makroer\tests\boomraader_test.sas";
%boomraader_test(branch=&branch, lagNyRef = &lagNyRef, lagNyStart = &lagNyStart);

%include "&filbane\makroer\tests\aggreger_test.sas";
%aggreger_test(branch=&branch, lagNyRef = &lagNyRef, lagNyStart = &lagNyStart);

%include "&filbane\makroer\tests\unik_pasient_test.sas";
%unik_pasient_test(branch = &branch, lagNyRef = &lagNyRef, lagNyStart = &lagNyStart);

%include "&filbane\makroer\tests\hyppigste_test.sas";
%hyppigste_test(branch = &branch, lagNyRef = &lagNyRef, lagNyStart = &lagNyStart);

%mend;