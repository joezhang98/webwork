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
	"Low hardness","T",
	"High elastic modulus","F",
	"High thermal expansion","F",
	"High ductility","T",
	"Low density","T",
	"High thermal conductivity","F",
	);
$tf->{ans_rule_len} = 1;
$tf -> choose(6);

BEGIN_TEXT;
Determine whether the following properties of polymers are true or false. Enter T in the answer box if the statement is true of a polymer, other enter F. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR

$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
