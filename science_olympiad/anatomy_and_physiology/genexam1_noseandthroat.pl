##DESCRIPTION
#
#File created: 06/03/2016
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

$pict = "noseandthroat.gif";

$tf = new_select_list();
$tf -> qa (
	"Frontal sinus","A",
	"Nasal cavity","B",
	"Nostril","C",
	"Hard palate","D",
	"Soft palate","E",
	"Tongue","F",
	"Throat (pharynx)","G",
	"Voice box (larynx)","H",
        "Vocal field","I",
	
	
);
$tf->{ans_rule_len} = 1;
$tf -> choose(9);

BEGIN_TEXT;
\{image($pict)\};
$BR
Match the following parts of the nose and throat with their corresponding locations in the diagram.  Enter the appropriate capital letter in the answer space provided.  You may click on the picture to enlarge it. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR

\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.