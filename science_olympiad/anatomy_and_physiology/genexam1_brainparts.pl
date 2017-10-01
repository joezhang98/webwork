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

$tf = new_select_list();
$tf -> qa (
	"Responsible for Conscious thought, Damage means severe personality changes. Posterior portion contains precentral gyrus AKA Somatomotor ","A",
	"Located above temporal lobe, responsible for spatial processing and navigation. Contains the somatosensory or primary sensory cortex","B",
	"Located in back of head, processes visual images that come from eyes ","C",
	"Located Between frontal and occipital lobes, responsible for visual memory / object recognition. Also essential for processing sound/smell and understanding language ","D",
	"Located under Cerebrum, in the back of the brain, controls balance, movement, and coordination ","E",
	"Located in front of cerebellum, controls involuntary actions such as respiration, digestion, circulation, sleep patterns, hunger and thirst, blood pressure, etc. ","F",
	"masses of gray matter in each hemisphere which are involved in control of voluntary muscle movements ","G",
	"responsible for controlling release of hormones throughout body - important in puberty","H",
	"dense nucleus, receives sensory impulses from other parts of nervous system, receives all sensory impulses (except smell) and channels to appropriate regions for interpretation ","I",
	"regulates body temperature, also monitors and regulates food intake, water-salt balance, blood flow, sleep-wake cycle, and activity of hormones ","J",
);
$tf->{ans_rule_len} = 1;
$tf -> choose(10);

BEGIN_TEXT;
Match the following terms with their corresponding functions/qualities in the brain.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Frontal lobe $BR
B - Parietal lobe $BR
C - Occipital lobe $BR
D - Temporal lobe $BR
E - Cerebellum $BR
F - Brain stem $BR
G - Basal ganglia $BR
H - Pituitary gland $BR
I - Thalamus $BR
J - Hypothalamus $BR
$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
