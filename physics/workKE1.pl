##DESCRIPTION
#
#File created: 5/20/2016
#File last modified: 5/20/2016
#Problem author: Joe Zhang jjzhang8771@gmail.com
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: work-energy theorem
#Question: horizontal -- work-energy
#Difficulty: easy
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
					kg=>"kg", 			m=>"m",
					mps=>"m/s", 		mpss=>"m/s^2",
					deg=>"degrees",	 N=>"N",
					Nm=>"N m", 			Npm=>"N/m", 	J=>"J",
					W=>"W", 				rps=>"rad/s",
					rpss=>"rad/s^2", 	kmps=>"kg m/s",
					kmm=>"kg m^2", 	kmmps=>"kg m^2/s",
					K=>"K", 				mmm=>"m^3",
					kpmmm=>"kg/m^3",	 Pa=>"Pa",
					Hz=>"Hz",			 eV=>"eV",
					C=>"C", 				V=>"V", 			A=>"A", 			T=>"T",
					NpC=>"N/C", 		ohm=>"ohms", 		F=>"F"]);

#this line is problem specific -- please edit the correct units code
$units->qa(" ","J");
$units->choose(1);

$units2=new_select_list();
$units2 ->rf_print_q(~~&units_list_print_q);
$units2 ->ra_pop_up_list([No_answer=>" ?",
					none=>"No units", sec=>"s",
					kg=>"kg", 			m=>"m",
					mps=>"m/s", 		mpss=>"m/s^2",
					deg=>"degrees",	 N=>"N",
					Nm=>"N m", 			J=>"J",
					W=>"W", 				rps=>"rad/s",
					rpss=>"rad/s^2", 	kmps=>"kg m/s",
					kmm=>"kg m^2", 	kmmps=>"kg m^2/s",
					K=>"K", 				mmm=>"m^3",
					kpmmm=>"kg/m^3",	 Pa=>"Pa",
					Hz=>"Hz",			 eV=>"eV",
					C=>"C", 				V=>"V", 			A=>"A", 			T=>"T",
					NpC=>"N/C", 		ohm=>"ohms", 		F=>"F"]);

#this line is problem specific -- please edit the correct units code
$units2->qa(" ","mps");
$units2->choose(1);

					
$pi = 4*atan(1);
$mass = non_zero_random(5,10,0.05);
$dist = non_zero_random(3,10,.2);
$force = non_zero_random(50,100,0.5);
$g = 9.8;
 
#TEXT(EV2(<<EOT));

BEGIN_TEXT
A frozen slab of meat with mass $mass kg is at rest on a flat, frictionless surface.
  Butch decides to push the slab of meat with a horizontal force of magnitude $force N
 for $dist meters.  Calculate the work done on the meat and the final speed of the meat after Butch
 has stopped pushing. $BR
$BR

The work done on the meat is  \{ans_rule(15)\} \{$units->print_q\}. $BR 
The final speed of the meat is  \{ans_rule(15)\} \{$units2->print_q\}. $BR  

END_TEXT

#EOT

$ans1= $force*$dist ;
$ans2= sqrt(2*$ans1/$mass) ;

&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units->ra_correct_ans));
&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units2->ra_correct_ans));

#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.
