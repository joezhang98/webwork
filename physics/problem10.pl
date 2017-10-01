##DESCRIPTION
#
#File created: 5/19/2016
#File last modified: 5/19/2016
#Problem author: Joe Zhang jjzhang8771@gmail.com
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: Algebra review
#Question: solve a simple algebraic equation
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

$A = non_zero_random(-9,9,0.1);
$B = non_zero_random(-9,9,0.1);
$C = non_zero_random(1,9,1);
$D = non_zero_random(-9,9,0.1);


TEXT(EV2(<<EOT));
Solve for \(a\).$BR


\($A\) = \(\frac{$B a - $C}{$D a}\) 
$BR $BR \(a\) = \{ans_rule(20) \} 
$BR $BR

EOT
$ans ="(-$C)/($A*$D-$B) ";
&ANS( std_num_cmp ($ans) );

ENDDOCUMENT();        # This should be the last executable line in the problem.