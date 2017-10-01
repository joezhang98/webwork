##DESCRIPTION
#
#File created: 06/06/2016
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
	"value at which a gravitational collapse of a star is not sufficient to become a neutron star, and so a white dwarf is formed instead","A",
	"tool that astronomers use to classify stars according to their luminosity, spectral type, color, temperature and evolutionary stage","B",
	"Distance from the Earth to the sun","C",
	"The shift of an object when it is viewed from two different places, used to measure distance to close stars ","D",
	"Point directly above head in the night sky","E",
	"The point in an object's orbit around the Earth when it is closest to the Earth ","F",
	"The point in an object's orbit around the Earth when it is farthest to the Earth","G",
	"The two times each year, near March 20th and September 22nd, when the Sun is directly overhead at noon as seen from Earth’s equator. When day and night are of equal length","H",
	"The two times each year, around June 20th and December 21st, when the Sun is farthest north or south in the sky","I",
	"An imaginary line in the sky traced by the Sun as it moves in its yearly path through the sky","J",
);
$tf->{ans_rule_len} = 1;
$tf -> choose(10);

BEGIN_TEXT;
Match the following terms with their corresponding definitions.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Chandrasekhar limit $BR
B - Hertzsprung-Russell diagram $BR
C - Astronomical unit $BR
D - Parallax $BR
E - Zenith $BR
F - Perigee $BR
G - Apogee $BR
H - Equinox $BR
I - Solstice $BR
J - Ecliptic $BR
$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
