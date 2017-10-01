##DESCRIPTION
#
#File created: 06/09/2016
#File last modified: 06/09/2016
#Problem author: Joe Zhang zhaoz@princeton.edu
#Location: DCDS
#
##ENDDESCRIPTION



DOCUMENT();        # This should be the first executable line in the problem.

loadMacros(
"PG.pl",
"PGbasicmacros.pl",
"PGchoicemacros.pl",
"PGanswermacros.pl",
"PGauxiliaryFunctions.pl"
);

TEXT(&beginproblem);
$showPartialCorrectAnswers = 1;

$units2 =new_select_list();
$units2 ->rf_print_q(~~&units_list_print_q);
$units2 ->ra_pop_up_list([No_answer=>" ?",
					none=>"No units", sec=>"s",
					kg=>"kg", 	m=>"m",
					mps=>"m/s", 	mpss=>"m/s^2",
					deg=>"degrees",	 N=>"N",
					Nm=>"N m", 	J=>"J",
					W=>"W", 	rps=>"rad/s",
					rpss=>"rad/s^2",kmps=>"kg m/s",
					kmm=>"kg m^2", 	kmmps=>"kg m^2/s",
					K=>"K", 	mmm=>"m^3",
					kpmmm=>"kg/m^3", Pa=>"Pa",
					Hz=>"Hz",	 eV=>"eV",
					C=>"C", 	V=>"V",
		 			A=>"A",		T=>"T",
					NpC=>"N/C",ohm=>"ohms",	F=>"F"]);

#this line is problem specific -- please edit the correct units code
$units2->qa(" ","W");
$units2->choose(1);

$units3 =new_select_list();
$units3 ->rf_print_q(~~&units_list_print_q);
$units3 ->ra_pop_up_list([No_answer=>" ?",
					none=>"No units", sec=>"s",
					kg=>"kg", 	m=>"m",
					mps=>"m/s", 	mpss=>"m/s^2",
					deg=>"degrees",	 N=>"N",
					Nm=>"N m", 	J=>"J",
					W=>"W", 	rps=>"rad/s",
					rpss=>"rad/s^2",kmps=>"kg m/s",
					kmm=>"kg m^2", 	kmmps=>"kg m^2/s",
					K=>"K", 	mmm=>"m^3",
					kpmmm=>"kg/m^3", Pa=>"Pa",
					Hz=>"Hz",	 eV=>"eV",
					C=>"C", 	V=>"V",
		 			A=>"A",		T=>"T",
					NpC=>"N/C",ohm=>"ohms",	F=>"F"]);

#this line is problem specific -- please edit the correct units code
$units3->qa(" ","mmm");
$units3->choose(1);

$eff = non_zero_random(85,95,1);
$elevation = non_zero_random(350,450,1);

$ans1 = $eff*$eff/100;
$ans2 = $eff*1000*9.81*$elevation;
$ans3 = ($eff*1000*3600)/(1000*9.81*380);

BEGIN_TEXT
$BR
The highest generation capacity (MW) pumped hydro facility in the world is Bath County Pumped Storage Station in Virginia.  The upper and lower reservoirs are separated by 380 m in elevation.  It is approximately $eff % efficient in generating and in pumping modes.
$BR
$BR
What is the roundtrip efficiency of the facility in percent (storing and then generating electricity)? \{ans_rule(15)\}  $BR
If the dam releases 100 meters-cubed/second of water how much electricity will be produced? \{ans_rule(15)\} \{$units2->print_q\} . $BR
How many cubic meters of water will be pumped up by 1 kWh of electric energy? \{ans_rule(15)\} \{$units3->print_q\}. $BR
$BR
$BR

END_TEXT

#EOT


&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );

&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units2->ra_correct_ans)) ;

&ANS(num_cmp($ans3,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units3->ra_correct_ans)) ;


#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.
