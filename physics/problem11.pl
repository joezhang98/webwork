##DESCRIPTION
#
#File created: 5/19/2016
#File last modified: 5/19/2016
#Problem author: Joe Zhang jjzhang8771@gmail.com
#Location: DCDS
#
#Course: Honours physics (alg/trig based physics)
#Topic: Algebra review
#Question: solve to get a function and plug in values
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

$A = non_zero_random(1,9,1);
$B = 4*$A; #Defined so that the coeffients of root a cancel
$C = non_zero_random(2,9,1);
$D = non_zero_random(3,9,2);

#Defines numerical values for b and c
$B1 = non_zero_random(1,9,1);
$C1 = non_zero_random(1,9,1);


TEXT(EV2(<<EOT));
Solve for \(a\) in terms of \(b\) and \(c\).$BR


\((\sqrt{a}+$A)^2\) + \({$C\(c\)\) = \(\frac{$B \sqrt{a} + $D ln (b)}{2}\) 
$BR $BR \(a\) = \{ans_rule(20) \} 
$BR $BR

Given \(b\) equals $B1 and \(c\) equals $C1, solve for \(a\) numerically.$BR $BR
\(a\) = \{ans_rule(20) \}
$BR $BR

EOT
$ans1 ="($D*ln(b)/2) - $C*c - $A**2 ";
$ans2 = ($D*ln($B1)/2) - $C*$C1 - $A**2;
&ANS( multivar_function_cmp ($ans1, ["b","c"] ) );
&ANS( std_num_cmp ($ans2) );

ENDDOCUMENT();        # This should be the last executable line in the problem.