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

$pict = "endocrine.gif";

$tf = new_select_list();
$tf -> qa (
	"Hypothalamus","A",
	"Pituitary","B",
	"Pineal","C",
	"Thyroid","D",
	"Parathyroid","E",
	"Thymus","F",
	"Adrenal","G",
	"Kidney","H",
        "Pancreas","I",
        "Ovaries","J",
	"Uterus","K",
        "Testes","L",
	
	
);
$tf->{ans_rule_len} = 1;
$tf -> choose(12);

BEGIN_TEXT;
\{image($pict)\};
$BR
Match the following parts of the endocrine system with their corresponding locations in the diagram.  Enter the appropriate capital letter in the answer space provided.  You may click on the picture to enlarge it. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR

\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.