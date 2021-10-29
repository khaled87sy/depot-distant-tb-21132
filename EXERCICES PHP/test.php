<?php

$s = htmlentities("khaledkhalaf_\/");	
echo $s. "<br>";


$jeux= array("Dragon Ball FighterZ","Bandai Namco","FIFA2021","Forza Horizon 4");

function affiche($i)
{
global $jeux;
echo $jeux[$i];
}
echo affiche(2);



echo "<h2>les Jeux Video:</h2> <hr>";
for ($i=0;$i < count($jeux);$i++) {
    echo $jeux[$i].'<br>';
}

echo "<hr>";
  $euro = 6.55957;
  printf("%.2f FF<br />",$euro);

  $money1 = 68.75;
  $money2 = 54.35;
  $money = $money1 + $money2;

  echo $money; // affiche 123.1;

  echo "affichage sans printf : ".$money."<br>";

  $monformat = sprintf("%01.2f", $money);

  echo $monformat; // affiche 123.10

  echo "affichage avec printf : ".$monformat."<br>";

  $year = "2002";
  $month = "4";
  $day = "5";

  $date = sprintf("%04d-%02d-%02d", $year, $month, $day);

  echo $date."<br>"; // affichera "2002-04-05"
  echo "affichage avec sprintf : ".$date."<br>";
?>

<?php
echo $_SERVER["HTTP_USER_AGENT"]. "<br>";
echo $_SERVER["REQUEST_TIME"]."<br>";
echo $_SERVER["HTTP_ACCEPT_LANGUAGE"]."<br>";
echo $_SERVER["HTTP_ACCEPT_LANGUAGE"]."<br>";

echo $_SERVER["HTTP_ACCEPT_LANGUAGE"]."<br>";


$myVar = "bonjour";
var_dump($myVar);

echo __FILE__ .__LINE__;

$a = 6.32172; 
$b = intval($a); 
$c = doubleval($a); 
echo $a - $b - $c; 



?>

<?php 
 $capitalcities['England'] = array("Capital"=>"London", 
 "Population"=>40000000, "NationalSport"=>"Cricket"); 
 var_dump($capitalcities)
 ?>

<?php
for ($i = 1; $i <= 10; $i++) { 
    echo $i."-"; 
}
?>

<?php
$myarray = array("a"=>"Pommes", "b"=>"Oranges", 
"c"=>"Poires"); 
var_dump($myarray); 
?>

<?php 
 $capitalcities['England'] = array("Capital"=>"London", 
 "Population"=>40000000, "NationalSport"=>"Cricket"); 
 $capitalcities['France'] = array("Capital"=>"Paris", 
 "Population"=>2440000, "NationalSport"=>"Football"); 
  var_dump($capitalcities)
?>


<?php
$array["a"] = "Oh"; 
$array["b"] = "Ha"; 
$array["c"] = "Hey"; 
$str = serialize($array); 
$strenc = urlencode($str);
$arr = unserialize(urldecode($strenc)); 
var_dump($strenc);
var_dump($arr);
?>


<?php

$a = 15.125863;
settype($a, "integer"); 
echo $a; 

var_dump($_SERVER);


?>






