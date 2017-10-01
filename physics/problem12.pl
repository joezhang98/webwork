##DESCRIPTION
#
#File created: 5/19/2016
#File last modified: 5/19/2016
#Problem author: Joe Zhang jjzhang8771@gmail.com
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: Algebra review
#Question: solve a simple algebraic equation with trig expressions
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

#Defines values for the coefficients
$A = non_zero_random(-9,9,0.1);
$B = non_zero_random(1,9,0.1);
$C = non_zero_random(-9,9,0.1);

#Defines values for the angles in degrees
$D = non_zero_random(1,359,1);
$E = non_zero_random(1,359,1);


TEXT(EV2(<<EOT));
Solve for \(n\).  The angle measurements are in degrees.$BR


\($A cos($D) + $B n\) = \($C sin($E)\) 
$BR $BR \(n\) = \{ans_rule(20) \} 
$BR $BR

EOT
#Make sure to convert the degree angle into radians for the answer calculation
$pi = 4*atan(1); #Defines the value of pi
$ans ="(($C*sin($E*$pi/180)-$A*cos($D*$pi/180))/$B) ";
&ANS( std_num_cmp ($ans) );

ENDDOCUMENT();        # This should be the last executable line in the problem.