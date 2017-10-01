##DESCRIPTION
#
#File created: 06/09/16
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
	"Measures the wind speed and transmits wind speed data to the controller","A",
	"Lifts and rotates when wind is blown over them, causing rotor to spin","B",
	"Stops the rotor mechanically, electrically, or hydraulically, in emergencies","C",
	"Starts up the machine at wind speeds of about 8 to 16 mph and shuts off the machine at about 55 mph","D",
	"Connects the low-speed shaft to the high-speed shaft and increases rotational speeds from about 30-60 rpm to about 1000-1800 rpm","E",
	"Produces 60-cycle AC electricity; it is usually an off-the-shelf induction generator","F",
	"Sits atop the tower and contains the gear box, low and high speed shafts, generator, controller, and brake","G",
	"Turns blades out of the wind to control rotor speed, and to keep the rotor from turning in winds too high or too low to produce electricity","H",
	"Contains the blades and hub","I",
	"Made from tubular steel, concrete, or steel lattice; supports the structure of the turbine","J",
	"Measures wind direction and communicates with the yaw drive to orient the turbine properly with respect to the wind","K",
        "Orients upwind turbines to keep them facing the wind when the direction changes","L",
        "Powers the yaw drive","M",
	);
$tf->{ans_rule_len} = 1;
$tf -> choose(13);

BEGIN_TEXT;
Match the following parts of a wind turbine with their corresponding definitions/functions.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Anemometer $BR
B - Blades $BR
C - Brake $BR
D - Controller $BR
E - Gear box $BR
F - Generator $BR
G - Nacelle $BR
H - Pitch $BR
I - Rotor $BR
J - Tower $BR
K - Wind vane $BR
L - Yaw drive $BR
M - Yaw motor $BR

$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
