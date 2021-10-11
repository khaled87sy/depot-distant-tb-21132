var b = parseFloat(prompt("Saisissez un nombre :"));
var a = parseFloat(prompt("Saisissez le nombre de multiple :"));

var resultat;
while ( a>0)
{
    resultat = b * a;
    console.log(b + "*" + a + "=" + resultat);
    a--;
}
console.log("Fin de la boucle");

0
