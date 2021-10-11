var n = 1;
var m = 0;
var s = 0;
var i = 0;

while (n != 0) 
{
    n = parseInt(window.prompt("Ecrivez un nombre svp"));
    s += n;
    i++ ;
}
m = s / (i -1);
alert("Somme : " + s + ", Moyenne : " + m);