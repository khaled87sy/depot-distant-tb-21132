var x = parseFloat(prompt("Saisissez un nombre :"));
var n = parseFloat(prompt("Saisissez le nombre de multiple :"));
var resultat;
while ( n>0)
{
    resultat = x * n;
    console.log(x + "*" + n + "=" + resultat);
    n--;
}


