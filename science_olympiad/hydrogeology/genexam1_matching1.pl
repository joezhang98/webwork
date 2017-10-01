##DESCRIPTION
#
#File created: 06/08/2016
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
	"Involve an unconfined water source, generally found at depths of 100 feet or less","A",
	"Drilled into a formation of natural rock, average depth is 250 feet","B",
	"Drilled into a formation of soil, sand, gravel, or clay that collapses upon itself","C",
	"Used to maintain an open access in the earth while not allowing any entrance or leakage into the well from the surrounding formations","D",
	"sealant that is used to fill in the spaces around the outside of the well. It protects the well against the intrusion of contaminants","E",
	"Keeps sand and gravel out of the well while allowing groundwater and water from formations to enter into the well","F",
	"Placed outside screen to prevent entering of sand or clogging of screen","G",

);
$tf->{ans_rule_len} = 1;
$tf -> choose(7);

BEGIN_TEXT;
Match the following terms with their corresponding definitions.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Bored wells $BR
B - Consolidated wells $BR
C - Unconsolidated wells $BR
D - Casing $BR
E - Grout $BR
F - Screen $BR
G - Gravel pack $BR
$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.