##DESCRIPTION
##KEYWORDS('magnitude and colour, non-math stream')
##DIFFICULTY('easy')
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



				
$R1 = non_zero_random(5,10,5);
$R2 = 2*$R1;
$R3 = 3*$R1;
$R4 = 4*$R1;
$V = non_zero_random(6,18,3);
$pict = "Circ_hwk2_d.gif" ;


TEXT (
      begintable(5),
	row("Resistor","R","I","V"), 
	row(R1,$R1, ans_rule(10) , ans_rule(10) ),
	row(R2,$R2, ans_rule(10) , ans_rule(10) ),
	row(R3,$R3, ans_rule(10) , ans_rule(10) ),
	row(R4,$R4, ans_rule(10) , ans_rule(10) ),
	row(Req, ans_rule(10) , ans_rule(10) , $V),
      endtable()
     );
 

#TEXT(EV2(<<EOT));
BEGIN_TEXT
$BR
Find the equivalent resistance of this circuit.  Then find the current through each resistor and the voltage across each resistor.
$BR
\{ image($pict) \} ;
$BR
 
END_TEXT

#EOT

$R5 = 1/( 1/$R2 + 1/$R3 );
$ans9 = $R1 + $R4 + $R5;
$ans10 = $V / $ans9;
$ans1 = $ans10 ;
$ans7 = $ans10 ;
$ans2 = $ans1 * $R1 ;
$ans8 = $ans7 * $R4 ;
$I5 = $ans10 ;
$V5 = $R5 * $I5 ;
$ans4 = $V5 ;
$ans6 = $V5 ;
$ans3 = $ans4/$R2;
$ans5 = $ans6/$R3;

&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans2,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans3,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans4,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans5,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans6,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans7,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans8,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans9,reltol=>1,format=>'%0.4g') );
&ANS(num_cmp($ans10,reltol=>1,format=>'%0.4g') );

#
#standard number comparison, good to .1 percent.

ENDDOCUMENT();     


   # This should be the last executable line in the problem.




