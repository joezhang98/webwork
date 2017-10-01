##DESCRIPTION
#
#File created: 06/09/2016
#File last modified: 06/09/2016
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

TEXT(EV2(<<EOT));
HAWT (Horizontal Axis Wind Turbine) and VAWT (Vertical Axis Wind Turbine) designs have advantages and disadvantages over each other.  For each of the reasons below, enter 1 if it is an advantage for a HAWT or 2 if it is an advantage for a VAWT. $BR

$BR
\{ans_rule(2)\} Less strain on the axle, reduces maintenance $BR
\{ans_rule(2)\} Easy maintenance because rotor housing is near ground $BR
\{ans_rule(2)\} Wind direction does not matter $BR
\{ans_rule(2)\} Has a higher efficiency because blades don't rotate into the wind $BR
\{ans_rule(2)\} Can be installed in locations where taller structures are prohibited or undesirable $BR
\{ans_rule(2)\} Higher installations increase the available wind energy $BR

EOT
$ans1 = 1;
$ans2 = 2;
$ans3 = 2;
$ans4 = 1;
$ans5 = 2;
$ans6 = 1;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );
&ANS( std_num_cmp ($ans6) );

ENDDOCUMENT();        # This should be the last executable line in the problem.