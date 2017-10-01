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
An aquifer has a cross sectional horizontal width of 265 m, and a vertical thickness below the water table of 42.0 m. The water table is 36.0 m below the ground surface. Each day, 3.34 million L of water is discharged through the cross sectional area. The aquifer rock has an effective porosity of 27.1%. Use Darcy’s law to find the a) Darcy speed, and b) actual speed of water as it passes through the aquifer.
$BR

 
$BR $BR The hydraulic gradient is = \{ans_rule(10) \}  m/s.
$BR 
The actual speed of the water is \{ans_rule(10) \} mm/s.

EOT
$ans1 =0.0000346;
$ans2 = 0.0128;
&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.