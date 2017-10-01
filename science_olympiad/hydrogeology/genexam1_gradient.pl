##DESCRIPTION
#
#File created: 06/08/2016
#File last modified: 06/08/2016
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

$h2 = non_zero_random(10,50,1);
$h1 = non_zero_random(60,100,1);
$d = non_zero_random(1,9,0.1);


TEXT(EV2(<<EOT));
If the elevation of h1 is $h1 m and the elevation of h2 is $h2 m, what is the hydraulic gradient if the distance from h1 to h2 is $d km? (Answer in m/km).$BR

 
$BR $BR The hydraulic gradient is: \{ans_rule(10) \}  m/km.
$BR $BR

EOT
$ans =($h1-$h2)/$d;
&ANS(num_cmp($ans,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.