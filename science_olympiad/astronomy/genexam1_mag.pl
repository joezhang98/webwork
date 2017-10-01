##DESCRIPTION
#
#File created: 06/06/2016
#File last modified: 06/06/2016
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

$m = non_zero_random(1,9,0.1);

TEXT(EV2(<<EOT));
Answer the following questions regarding absolute magnitude and the distance modulus.$BR
$BR
The definition of the absolute magnitude of a star is it's visual magnitude if it were \{ans_rule(5)\} parsecs away. 
$BR
Visual magnitude measures \{ans_rule(10)\} (brightness, luminosity) while absolute magnitude measures \{ans_rule(10)\} (brightness, luminosity).
$BR
Star A has an absolute magnitude of +6.  Star B has an absolute magnitude of +1.  Star B is \{ans_rule(5)\} times brighter/more luminous than Star A.
$BR
$BR
A star has a visual magnitude of $m and is 100 parsecs away.  Calculate its absolute magnitude: \{ans_rule(5)\}
$BR
$BR

EOT
$ans1 = 10;
$ans2 = "brightness";
$ans3 = "luminosity";
$ans4 = 100;
$ans5 = (5-5*2+$m);

&ANS( std_num_cmp ($ans1) );
&ANS(str_cmp($ans2) );
&ANS(str_cmp($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS(num_cmp($ans5,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.