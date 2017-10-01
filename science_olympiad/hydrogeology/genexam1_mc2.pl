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
$mc0->qa("An artesian system is one in which:",
  "  Water can rise above the level of an aquifer when a well is drilled ");
 $mc0->extra(
              "  There are no aquicludes",
"  Water is unconfined",
           
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