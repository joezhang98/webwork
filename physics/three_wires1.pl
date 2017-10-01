##DESCRIPTION
#
#File created: 5/26/2016
#File last modified: 5/26/2016
#Problem author: Joe Zhang zhaoz@princeton.edu
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: Lorentz force
#Question:  B field and vector addition 
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


$units1=new_select_list();
$units1 ->rf_print_q(~~&units_list_print_q);
$units1 ->ra_pop_up_list([No_answer=>" ?",
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
$units1->qa(" ","T");
$units1->choose(1);

$units2=new_select_list();
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
$units2->qa(" ","deg");
$units2->choose(1);

$pi = 4*atan(1);
$i1= non_zero_random(-500,500,1); #goes up - only vertical component
$i2= non_zero_random(-500,500,1); #horizontal and vertical components
$i3= non_zero_random(-500,500,1); #goes left - only horizontal component
$square = non_zero_random(1,5,0.1);
$diagonal = sqrt(2)*$square;
$u= 2*10**-7;
#magnitude of the B fields
$b1= $u*$i1/$square;
$b2= $u*$i2/$diagonal;
$b3= $u*$i3/$square;

$b_compx = (-1)*$b3+(-1)*$b2*cos($pi/4);
$b_compy = $b1+$b2*sin($pi/4);
$b_mag = sqrt($b_compx*$b_compx+$b_compy*$b_compy);
$ang = atan($b_compy/$b_compx);
if ($b_compx < 0) {$ang = $ang + $pi};
if ($ang < 0) {$ang = $ang + 2*$pi};

$deg = $ang*180/$pi;


BEGIN_TEXT
There exists a square with side length $square m with three wires at the corners.  In this problem a positive current denotes a wire coming out of the page, and a negative current denotes a wire going into the page.  
$BR
$BR
The first wire is in the top left corner and carries $i1 A.  The second wire is in the bottom left corner and carries $i2 A.  The third wire is in the bottom right corner and carries $i3 A.  
What is the magnitude of the B field at the top right corner of the square?  What is the direction of the field in degrees measure from the positive x-axis?
$BR
$BR
The magnitude of the B field is \{ans_rule(15)\} \{$units1->print_q\} . $BR
The direction of the B field is \{ans_rule(15)\} \{$units2->print_q\} Your answer must be positive. $BR

END_TEXT

#EOT


&ANS(num_cmp($b_mag,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units1->ra_correct_ans));
&ANS(num_cmp($deg,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($units2->ra_correct_ans));

#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.

