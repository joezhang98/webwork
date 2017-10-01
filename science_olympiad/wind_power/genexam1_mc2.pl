# Hydrogeology
# Question Type: MC
# Author: Joe Zhang zhaoz@princeton.edu
# Date created 06/09/2016

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
$mc0->qa("At what time is energy most likely to be stored in an energy storage facility?",
  "3am");
 $mc0->extra(
              "3pm",
"9am",
"9pm",
           
             );

#$mc0->makeLast("All of the Above");

#$mc0->makeLast("None of the Above");

BEGIN_TEXT
\{$mc0->print_q\}
$PAR
\{$mc0->print_a\}
END_TEXT

ANS(str_cmp($mc0->correct_ans));

ENDDOCUMENT();