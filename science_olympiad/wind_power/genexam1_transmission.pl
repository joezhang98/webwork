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
$units->qa(" ","A");
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
$units2->qa(" ","V");
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
$units3->qa(" ","W");
$units3->choose(1);

$long = non_zero_random(60,80,1);
$power = non_zero_random(700,800,1);
$line = non_zero_random(400,600,1);
$ohm = non_zero_random(0.05,0.15,.01);

$ans1 = 1000*$power/$line;
$ans2 = $ans1*$long*$ohm;
$ans3 = $ans1*$ans2;
$ans4 = $ans3*100/($power*1000000);
					
BEGIN_TEXT
$BR
A $long km long electrical power line carries power from Palo Verde to Phoenix.  The line supplies $power MW on a $line KV line.  The line has resistance $ohm ohms per km.  Assume all values are RMS and only pure resistive effects.  Include units.
$BR
$BR
The current flowing along the line is: \{ans_rule(15)\} \{$units->print_q\} . $BR
The voltage drop between the ends of the line is: \{ans_rule(15)\} \{$units2->print_q\} . $BR
The power lost in the line is: \{ans_rule(15)\} \{$units3->print_q\}. $BR
The percentage of the power lost in the power line is: \{ans_rule(15)\} $BR
$BR
$BR

END_TEXT

#EOT


&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units->ra_correct_ans)) ;

&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units2->ra_correct_ans)) ;

&ANS(num_cmp($ans3,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units3->ra_correct_ans)) ;

&ANS(num_cmp($ans4,reltol=>1,format=>'%0.4g') );

#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.
