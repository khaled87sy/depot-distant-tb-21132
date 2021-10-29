<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  

<?php



$tableau = array("a" => "Lundi",
"b" => "Mardi",
"c" => "Mercredi",
"d" => "Jeudi",
"e" => "Vendredi"
);
arsort($tableau); 
foreach($tableau as $cle => $valeur) 
{ 
   echo $cle ." : ".$valeur."<br>"; 
}


$facture = array("Janvier"=>500, "Février"=>620, "Mars"=>300, "Avril"=>130, "Mai"=>560, "Juin"=>350); 
$facture_sixmois=0; 

foreach ($facture as $mois => $valeur) 
{ 
   echo "Facture du mois de $mois : $valeur Euros<br />"; 
   $facture_sixmois +=$valeur; 
} 

echo "Facture total de six mois : <b>$facture_sixmois Euros</b>"; 




























$input = array("red", "green", "blue", "yellow");
array_splice($input, 2);
var_dump($input);

$input = array("red", "green", "blue", "yellow");
array_splice($input, 1, -1);
var_dump($input);

$input = array("red", "green", "blue", "yellow");
array_splice($input, 1, count($input), "orange");
var_dump($input);

$input = array("red", "green", "blue", "yellow");
array_splice($input, -1, 1, array("black", "maroon"));
var_dump($input);
?>







</body>
</html>








