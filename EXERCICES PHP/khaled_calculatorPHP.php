<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CALCULATOR</title>
</head>
<body>
  
<?php

function calculator($fn, $sn)
{
echo $fn." + ".$sn." =".($fn+$sn)."<hr>";
echo $fn." - ".$sn." =".($fn-$sn)."<hr>";
echo $fn." * ".$sn." =".($fn*$sn)."<hr>";
echo $fn." / ".$sn." =".($fn/$sn)."<hr>";
  
}
   calculator(100,100);
?>


</body>
</html>