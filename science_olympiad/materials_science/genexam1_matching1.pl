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
	"Force per unit area","A",
	"The amount of deformation an object experiences compared to its original size and shape","B",
	"A measure of the stiffness of an elastic material","C",
	"The stress at which a material begin to deform plastically","D",
	"Measure of a fluid’s resistance to gradual deformation by stress","E",
	"The tendency of liquids to resist external force, caused by cohesion","F",
	"Irreversible deformation","G",
	"slow permanent deformation by long term exposure to high levels of stress below yield strength of material","H",
	"ability of a material to resist cracking","I",
);
$tf->{ans_rule_len} = 1;
$tf -> choose(9);

BEGIN_TEXT;
Match the following terms with their corresponding definitions.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Stress $BR
B - Strain $BR
C - Young's modulus $BR
D - Yield strength $BR
E - Viscosity $BR
F - Surface tension $BR
G - Plastic deformation $BR
H - Creep rate $BR
I - Fracture toughness $BR
$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
