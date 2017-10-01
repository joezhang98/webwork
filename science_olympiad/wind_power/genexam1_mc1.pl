# Hydrogeology
# Question Type: MC
# Author: Joe Zhang zhaoz@princeton.edu
# Date created 06/08/2016

DOCUMENT();

loadMacros("PG.pl",
"PGbasicmacros.pl",
"PGchoicemacros.pl",
"PGanswermacros.pl",
"PGauxiliaryFunctions.pl");

TEXT(&beginproblem);
$showPartialCorrectAnswers = 0;

$mc0 = new_multiple_choice();


## gravitational force
$mc0->qa("The first windmill in the US was built in 1854 by Daniel Halliday for pumping water on his farm.  He was so successful that he moved from Connecticut to Illinois.  His windmill played an important role in",
  "the expansion of the railroads");
 $mc0->extra(
              "the fish farming industry",
"the expansion of the mining industry",
"the building of canals",
           
             );

$mc0->makeLast("All of the Above");

$mc0->makeLast("None of the Above");

BEGIN_TEXT
\{$mc0->print_q\}
$PAR
\{$mc0->print_a\}
END_TEXT

ANS(str_cmp($mc0->correct_ans));

ENDDOCUMENT();