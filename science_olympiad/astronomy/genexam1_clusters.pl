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
The following characteristics pertain to either globular star clusters, open star clusters, or both.  In the answer box next to the statement, enter "1" if it only applies to
 globular clusters, enter "2" if it applies to open clusters, or enter "12" it if applies to both.$BR

$BR
\{ans_rule(2)\} Located in the halo or bulge of a galaxy. $BR
\{ans_rule(2)\} Contains bright blue stars. $BR
\{ans_rule(2)\} Orbits the center of a galaxy. $BR
\{ans_rule(2)\} Typically groups of hundreds of stars, as opposed to thousands or tens of thousands $BR
\{ans_rule(2)\} Irregularly shaped grouping of stars $BR
\{ans_rule(2)\} Located in the arms of the Milky Way and other spiral galaxies $BR
\{ans_rule(2)\} Composed of old, red stars $BR
\{ans_rule(2)\} All of the stars have the same age and distance from the Earth $BR

EOT
$ans1 = 1;
$ans2 = 2;
$ans3 = 12;
$ans4 = 2;
$ans5 = 2;
$ans6 = 2;
$ans7 = 1;
$ans8 = 12;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );
&ANS( std_num_cmp ($ans6) );
&ANS( std_num_cmp ($ans7) );
&ANS( std_num_cmp ($ans8) );

ENDDOCUMENT();        # This should be the last executable line in the problem.