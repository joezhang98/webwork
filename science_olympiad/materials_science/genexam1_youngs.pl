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


$units=new_select_list();
$units ->rf_print_q(~~&units_list_print_q);
$units ->ra_pop_up_list([No_answer=>" ?",
					none=>"No units", sec=>"s",
					kg=>"kg", 	m=>"m",
                                        mm=>"m^2",
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
$units->qa(" ","mm");
$units->choose(1);

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
$units2->qa(" ","N");
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
$units3->qa(" ","m");
$units3->choose(1);

$pi = 4*atan(1);
$diameter = non_zero_random(0.02,0.03,0.001);
$mass = non_zero_random(600,700,1);
$length =  non_zero_random(2,20,.2);
$m3= non_zero_random(10,14,0.1);


$ans1 = $pi*$diameter*$diameter/4;
$ans2 = $mass*9.81 ;
$ans3 = $ans2*$length/($ans1*200000000000) ;

					
BEGIN_TEXT
$BR
A mine elevator is supported by a single steel cable $diameter m in diameter. The total mass of the elevator and occupants is $mass kg.  Young's modulus of steel is 200 billion Pascals. 
$BR
$BR

The cross-sectional area of the cable is: \{ans_rule(15)\} \{$units->print_q\} . $BR
The force exerted on the cable is: \{ans_rule(15)\} \{$units2->print_q\} . $BR
Use Young's Modulus to calculate how much the cable stretches when it hangs by $length m at the surface: \{ans_rule(15)\} \{$units3->print_q\} . $BR


END_TEXT

#EOT


&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units->ra_correct_ans)) ;

&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units2->ra_correct_ans)) ;

&ANS(num_cmp($ans3,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units3->ra_correct_ans)) ;

#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.

