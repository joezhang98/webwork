##DESCRIPTION
##KEYWORDS('Muon and the Mountain')
##DIFFICULTY('medium')
##AUTHOR ('Dr. Patricia Hanlan, Detroit Country Day School')
##ENDDESCRIPTION

DOCUMENT();        # This should be the first executable line in the problem.

loadMacros(
"PG.pl",
"PGbasicmacros.pl",
"PGchoicemacros.pl",
"PGanswermacros.pl",
"PGauxiliaryFunctions.pl"
);

TEXT(&beginproblem);
$showPartialCorrectAnswers = 1;



				
$h1 = non_zero_random(6,9,0.2);
$h2 = non_zero_random(2,5,0.2);
$beta = non_zero_random(0.95,0.99,0.01);
$lt_micro = non_zero_random(2.1,2.3,0.01);
$lt = $lt_micro*.000001;


TEXT (
      begintable(5),
	row(" ","Person on Muon","Person on Mountain"), 
	row("mass in zeptograms", ans_rule(10) , ans_rule(12) ),
	row("lifetime", ans_rule(10) , ans_rule(12) ),
	row("distance to mountain", ans_rule(10), ans_rule(12)  ),
	row("distance muon travels", ans_rule(10) , ans_rule(12) ),
        row("will muon hit? (Enter yes or no)",ans_rule(10), ans_rule(12) ),
      endtable()
     );

$Emev = 105.7;
$gamma = 1/sqrt(1-$beta*$beta);
$m0 = $Emev*1.602*10**-13/(9*10**16);
$ans1 = $m0*10**24;
$ans2 = $gamma * $m0*10**24 ;
$ans3 = $lt ;
$ans4 = $lt*$gamma;
$L0 = ($h1 - $h2)*1000;
$ans5 = $L0/$gamma;
$ans6 = $L0;
$v = $beta* 3*10**8;
$ans7 = $v * $ans3;
$ans8 = $v * $ans4;
$ratio1 = $ans7/$ans5;
$ratio2 = $ans9/$ans6;
if ($ratio1 > 1) {$ans9 = "yes";}
else {$ans9 = "no";}
if ($ratio2 > 1) {$ans10 = "yes";}
else {$ans10 = "no";}



#TEXT(EV2(<<EOT));
BEGIN_TEXT
$BR
Cosmic rays hitting the top clouds in the Earth's troposphere ( $h1 km above the surface) will create muons \((\mu) \) that travel at roughly $beta c.  Muons have a life time of $lt s and a rest energy of 105.7 Mev.
$BR
$BR
For a stationary observer on a mountain $h2 km above the surface, and a person traveling with the muon, fill in the table above. What is the measured mass and lifetime of the muon?  How far does is have to travel to hit the mountain?  How far does it travel in it's lifetime? Will the muon hit the mountain (answer yes or no, all lower case)?



 
END_TEXT

#EOT




&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans3,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans4,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans5,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans6,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans7,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans8,reltol=>1,format=>'%0.4g') );
&ANS(str_cmp($ans9) );
&ANS(str_cmp($ans10) );

#
#standard number comparison, good to .1 percent.

ENDDOCUMENT();     


   # This should be the last executable line in the problem.




