<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>khaled-table_multiplication_totale</title>
</head>
<body>
   

<h2> Table_Multiplication_Totale</h2>
<table border="1">

<?php
echo "<tr><td>";
for ($i=0;$i<=12;$i=$i+1)
{
echo"<th>".$i."</th>";
}

for ($j=0;$j<=12;$j++)
{
echo"<tr><th>".$j."</th>";
for($k=0;$k<=12;$k++)
{
$p=$j*$k;
echo"<td style='text-align:center'>".$p."</td>";
}
}
?>



</body>
</html>