##DESCRIPTION
#
#File created: 06/09/2016
#Problem author: Joe Zhang zhaoz@princeton.edu
#Location: DCDS
##ENDDESCRIPTION

DOCUMENT();        # This should be the first executable line in the problem.

loadMacros(
"PG.pl",
"PGbasicmacros.pl",
"PGchoicemacros.pl",
"PGanswermacros.pl",
);

TEXT(&beginproblem);
$showPartialCorrectAnswers = 0;

$tf = new_select_list();
$tf -> qa (
	"combines hard brittle cementite with soft, ductile ferrite to get superior material","A",
	"fine powder, chalk, clay, lime bearing minerals","B",
	"cement strengthened by adding particulates","C",
	"use of hard, small particles to strengthen metals and metal alloys","D",
	"changing solid solubility with temp to form fine particles that impede dislocation motion","E",
	"formation of single phase particles by quenching fiber reinforced composite sites","F",
	"strong stiff end sheets bonded to lightweight core structure","G",
	"sheets (panels) with different orientation of high strength directions stacked and glued together, producing materials with more isotropic strength in plane","H",
	"very thin single crystal that have extremely large length to diameter ratios","I",
        "composite industry’s term for continuous fiber reinforcement with polymer resin that’s partially cured","J",
);
$tf->{ans_rule_len} = 1;
$tf -> choose(10);

BEGIN_TEXT;
Match the following terms with their corresponding definitions.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Pearlitic steel $BR
B - Portland concrete $BR
C - Cement $BR
D - Dispersion strengthened composites $BR
E - Precipitation hardening $BR
F - Solid solution hardness $BR
G - Sandwich panels $BR
H - Laminar composites $BR
I - Whiskers $BR
J - Prepreg $BR
$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
