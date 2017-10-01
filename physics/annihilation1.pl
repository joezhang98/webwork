##DESCRIPTION
#
#File created: 5/25/2016
#File last modified: 5/25/2016
#Problem author: Joe Zhang zhaoz@princeton.edu
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: Into to quantum
#Question: annihilation and pair production 
#Difficulty: medium
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
			kg=>"kg",	m=>"m",
			mps=>"m/s", 	mpss=>"m/s^2",
			deg=>"degrees",	 N=>"N",
			Nm=>"N m", J=>"J",
			W=>"W", 	rps=>"rad/s",
			rpss=>"rad/s^2",kmps=>"kg m/s",
			kmm=>"kg m^2", 	kmmps=>"kg m^2/s",
			K=>"K", 	mmm=>"m^3",
			kpmmm=>"kg/m^3", Pa=>"Pa",
			Hz=>"Hz",	 eV=>"eV",
			C=>"C", 	V=>"V", 
			A=>"A", 	T=>"T",
			NpC=>"N/C", 	ohm=>"ohms", 	F=>"F"]);

#this line is problem specific -- please edit the correct units code
$units->qa(" ","J");
$units->choose(1);

$units2=new_select_list();
$units2 ->rf_print_q(~~&units_list_print_q);
$units2 ->ra_pop_up_list([No_answer=>" ?",
			none=>"No units", sec=>"s",
			kg=>"kg",	m=>"m",
			mps=>"m/s", 	mpss=>"m/s^2",
			deg=>"degrees",	 N=>"N",
			Nm=>"N m", J=>"J",
			W=>"W", 	rps=>"rad/s",
			rpss=>"rad/s^2",kmps=>"kg m/s",
			kmm=>"kg m^2", 	kmmps=>"kg m^2/s",
			K=>"K", 	mmm=>"m^3",
			kpmmm=>"kg/m^3", Pa=>"Pa",
			Hz=>"Hz",	 eV=>"eV",
			C=>"C", 	V=>"V", 
			A=>"A", 	T=>"T",
			NpC=>"N/C", 	ohm=>"ohms", 	F=>"F"]);

#this line is problem specific -- please edit the correct units code
$units2->qa(" ","J");
$units2->choose(1);

$units3=new_select_list();
$units3 ->rf_print_q(~~&units_list_print_q);
$units3 ->ra_pop_up_list([No_answer=>" ?",
			none=>"No units", sec=>"s",
			kg=>"kg",	m=>"m",
			mps=>"m/s", 	mpss=>"m/s^2",
			deg=>"degrees",	 N=>"N",
			Nm=>"N m", J=>"J",
			W=>"W", 	rps=>"rad/s",
			rpss=>"rad/s^2",kmps=>"kg m/s",
			kmm=>"kg m^2", 	kmmps=>"kg m^2/s",
			K=>"K", 	mmm=>"m^3",
			kpmmm=>"kg/m^3", Pa=>"Pa",
			Hz=>"Hz",	 eV=>"eV",
			C=>"C", 	V=>"V", 
			A=>"A", 	T=>"T",
			NpC=>"N/C", 	ohm=>"ohms", 	F=>"F"]);

#this line is problem specific -- please edit the correct units code
$units3->qa(" ","kg");
$units3->choose(1);

$v = non_zero_random(0.990,0.999,0.001) ;
$c =  3*10**8;
$gamma = 1/sqrt(1-$v*$v) ;
$h = 6.626*10**-34 ;
$eV = 1.602*10**-19 ;
$eVLight = 1.782662*10**-36 ;
$mproton = 1.67*10**-27 ;

BEGIN_TEXT
$BR
A proton and an anti-proton, both at rest, collide and annihilate to produce one photon.  What is the energy of the photon produced?
$BR
The energy of the photon is: \{ans_rule(10)\} x10**\{ans_rule(5)\} \{$units->print_q\} $BR
Energy in \(eV\): \{ans_rule(15)\} $BR
$BR
Now suppose that both the proton and the anti-proton were traveling at a speed of $v \(c\).  What is the new energy of the photon produced? 
$BR
The new energy of the photon is: \{ans_rule(10)\} x10**\{ans_rule(5)\} \{$units2->print_q\} $BR
Energy in \(eV\): \{ans_rule(15)\} $BR
$BR
Now suppose that the photon (produced by the proton and anti-proton traveling near the speed of light) undergoes pair production of a particle and its corresponding anti-particle.  What is the maximum mass of each?
$BR
The maximum mass is: \{ans_rule(10)\} x10**\{ans_rule(5)\} \{$units3->print_q\} $BR
Mass in \(eV/c^2\): \{ans_rule(15)\} $BR
END_TEXT

#EOT
$ans1 = 2*$mproton*$c*$c ;
$ans2 = $ans1/(1.602*10**-19) ;
$exp1 = int(log($ans1)/log(10));
if ($exp1<0){$exp1=$exp1-1;}
$ans1 = $ans1/10**$exp1;
if ($ans1<1){$ans1=$ans1*10;$exp1=$exp1-1;}
$ans3 = 2*$gamma*$mproton*$c*$c ;
$ans4 = $ans3/(1.602*10**-19) ;
$exp2 = int(log($ans3)/log(10));
if ($exp2<0){$exp2=$exp2-1;}
$ans3 = $ans3/10**$exp2;
if ($ans3<1){$ans3=$ans3*10;$exp2=$exp2-1;}
$ans5 = 2*$gamma*$mproton*$c*$c/(2*$c*$c) ;
$ans6 = $ans5/(1.782662*10**-36) ;
$exp3 = int(log($ans5)/log(10));
if ($exp3<0){$exp3=$exp3-1;}
$ans5 = $ans5/10**$exp3;
if ($ans5<1){$ans5=$ans5*10;$exp3=$exp3-1;}

&ANS(arith_num_cmp($ans1));
&ANS(num_cmp($exp1));
&ANS(str_cmp($units->ra_correct_ans));
&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(arith_num_cmp($ans3));
&ANS(num_cmp($exp2));
&ANS(str_cmp($units2->ra_correct_ans));
&ANS(num_cmp($ans4,reltol=>1,format=>'%0.4g') );
&ANS(arith_num_cmp($ans5));
&ANS(num_cmp($exp3));
&ANS(str_cmp($units3->ra_correct_ans));
&ANS(num_cmp($ans6,reltol=>1,format=>'%0.4g') );

#standard number comparison, good to .1 percent.

ENDDOCUMENT();        # This should be the last executable line in the problem.

