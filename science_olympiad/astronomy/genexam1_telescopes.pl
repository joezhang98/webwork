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

TEXT(EV2(<<EOT));
The following characteristics pertain to either refracting telescopes or reflecting telescopes.  In the answer box next to the statement, enter "1" if it applies to refracting
 telescopes or enter "2" if it applies to reflecting telescopes. $BR

$BR
\{ans_rule(2)\} Suffers from chromatic aberration. $BR
\{ans_rule(2)\} Slight loss of light due to the presence of a secondary mirror obstruction. $BR
\{ans_rule(2)\} The largest telescope of this kind is located at the Yerkes Observatory at the University of Chicago. $BR
\{ans_rule(2)\} Needs little maintenance and is sealed from dust or air currents. $BR
\{ans_rule(2)\} More difficult to make. $BR
\{ans_rule(2)\} Most commonly used type of telescope today. $BR

EOT
$ans1 = 1;
$ans2 = 2;
$ans3 = 1;
$ans4 = 1;
$ans5 = 2;
$ans6 = 2;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );
&ANS( std_num_cmp ($ans6) );

ENDDOCUMENT();        # This should be the last executable line in the problem.