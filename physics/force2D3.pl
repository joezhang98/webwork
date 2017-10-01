##DESCRIPTION
#
#File created: 5/20/2016
#File last modified: 5/20/2016
#Problem author: Joe Zhang jjzhang8771@gmail.com
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: forces --2D
#Question:  adding forces
#Difficulty: hard
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

#Defines the variables					
$pi = 4*atan(1);
$F1 = non_zero_random(10,100,1);
$F2 = non_zero_random(10,100,1);
$F3 = non_zero_random(10,100,1);
$F4 = non_zero_random(10,100,1);
#Calculations
$Fx= $F2-$F4;
$Fy= $F1-$F3 ;
$ans1= sqrt($Fx**2+$Fy**2) ;
$ans2= atan($Fy/$Fx)*180/$pi;
if ($Fx<0) {
    $ans2=$ans2+180 ; 
	 }
if ($ans2 < 0) {$ans2 = $ans2 + 360;}

#Defines the answer for determining whether Humpty Dumpty stays intact
if ($ans1 > 75) {$break = "yes";}
else {$break = "no";}


$units=new_select_list();
$units ->rf_print_q(~~&units_list_print_q);
$units ->ra_pop_up_list([No_answer=>" ?",
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
$units->qa(" ","N");
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
$units2->qa(" ","deg");
$units2->choose(1);

$break_ans=new_select_list();
$break_ans ->rf_print_q(~~&units_list_print_q);
$break_ans ->ra_pop_up_list([No_answer=>" ?",
                          yes=>"yes",
					      no=>"no"]);

$break_ans->qa(" ",$break);
$break_ans->choose(1);
 
#TEXT(EV2(<<EOT));

BEGIN_TEXT
Humpty Dumpty is sitting comfortably on a wall when four people decide to throw lassos 
over his round body.  The first person pulls Humpty Dumpty north with a force of magnitude $F1 N.
 The second person pulls east with a force of $F2 N.  The third person exerts a force 
of $F3 N south, and the fourth person pulls with a force of $F4 N west. What is the magnitude of the net force exerted on Humpty Dumpty's body?  In which direction is the net force exerted? $BR
$BR

\(\Sigma\)F = \{ans_rule(15)\} \{$units->print_q\}. $BR
\(\theta\) =  \{ans_rule(15)\} \{$units2->print_q\} from the positive x axis.  Give your answer as a positive number. $BR
$BR
If Humpty Dumpty shatters when the net force exerted on his body is greater than 75 N, does he break?
\{$break_ans->print_q\}
 

END_TEXT

#EOT


													

&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units->ra_correct_ans));
&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units2->ra_correct_ans));
&ANS(str_cmp($break_ans->ra_correct_ans));

#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.
