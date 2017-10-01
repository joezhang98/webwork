##DESCRIPTION
#
#File created: 5/23/2016
#File last modified: 5/23/2016
#Problem author: Joe Zhang zhaoz@princeton.edu
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: Work-Energy 
#Question:  Energy conservation and work
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
$units->qa(" ","m");
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
$units2->qa(" ","J");
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

$units4 =new_select_list();
$units4 ->rf_print_q(~~&units_list_print_q);
$units4 ->ra_pop_up_list([No_answer=>" ?",
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
$units4->qa(" ","none");
$units4->choose(1);

$units5 =new_select_list();
$units5 ->rf_print_q(~~&units_list_print_q);
$units5 ->ra_pop_up_list([No_answer=>" ?",
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
$units5->qa(" ","m");
$units5->choose(1);

$m = non_zero_random(0,10,.2);
$h = non_zero_random(2,4,.05);
$k = non_zero_random(0,10,.2);
$d = non_zero_random(1,1.5,.02);
$x = non_zero_random(.2,.5,.02);
$deg = non_zero_random(10,40,1);

$pict = "ramppict.gif";

$ang = $deg*3.141592654/180;
$h1 = ($d-$x)*sin($ang);


$ans1 = 0.5*$k*$x*$x - $m*9.8*($h-$h1);
$h2 = ($h/sin($ang))-($d-$x);
$ans2 = ((-1)*$ans1*tan($ang))/($m*9.8*($h-$h1));

$dc = ($k*$x*$x) / (2*$m*9.8*(sin($ang) + $ans2*cos($ang)));
$ans3 = $dc*sin($ang) + $h1;
					
BEGIN_TEXT
\{image($pict)\};
$BR
$BR
A box with mass $m kg (starting at point A) slides down a ramp inclined at $deg degrees. It was released from rest $h meters above the ground. Near the bottom of the ramp, the box hits a spring of length $d meters with a k of $k N/m which is compressed $x meters (point B). What is the height of the box at B?  How much work does friction do from point A to point B? What is the distance from point A to point B along the ramp?  What is the coefficient of friction between the ramp and the box? 
$BR
$BR
At this point, the spring releases and the box moves back up the ramp (to point C).  How high above the ground is the box when it stops?
$BR
$BR

The height of the box at point B is \{ans_rule(15)\} \{$units->print_q\} . $BR
The work of friction is \{ans_rule(15)\} \{$units2->print_q\} . $BR
The distance from point A to point B along the ramp is \{ans_rule(15)\} \{$units3->print_q\}. $BR
The coefficient of friction is \{ans_rule(15)\} \{$units4->print_q\}. $BR
The box is \{ans_rule(15)\} \{$units5->print_q\} above the ground. $BR
$BR
$BR
(Hint for the last part: Consider the energy at point B and the energy lost/gained in moving from point B to point C.)


END_TEXT

#EOT


&ANS(num_cmp($h1,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units->ra_correct_ans)) ;

&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units2->ra_correct_ans)) ;

&ANS(num_cmp($h2,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units3->ra_correct_ans)) ;

&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units4->ra_correct_ans)) ;

&ANS(num_cmp($ans3,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units5->ra_correct_ans)) ;

#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.
