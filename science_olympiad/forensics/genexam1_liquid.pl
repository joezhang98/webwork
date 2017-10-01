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
	"When added to corn starch, the sample will turn black, if corn starch is not present, will remain brown","A",
	"Used to categorize samples into two fields, reactive and non-reactive. If milky white precipitate forms, sample is reactive","B",
	"Will react when added to samples containing carbonates","C",
	"Used to detect glucose. If glucose is present, sample will react and form an orange precipitate. Can also be used to test for ammonium chloride","D",
	"Used for determining solubility of chemical samples and used for making solutions","E",
	);
$tf->{ans_rule_len} = 1;
$tf -> choose(5);

BEGIN_TEXT;
Match the following liquids with their appropriate uses. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Iodine $BR
B - Sodium hydroxide $BR
C - Hydrochloric acid $BR
D - Benedict's solution $BR
E - Water $BR

$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
