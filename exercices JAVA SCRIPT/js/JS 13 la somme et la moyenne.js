// programme permettant de saisir différentes valeurs numérique 
// (avec l'instruction window.prompt), ces valeurs seront rangées dans un tableau.

// La saisie s'arrête quand l'utilisateur entre la valeur 0.




var nombres = new Array (n=1 , m=0, s=0, i=0)
// var n = 1;
// var m = 0;
// var s = 0;
// var i = 0;

while (n != 0) 
{
    n = parseInt(window.prompt("Ecrivez un nombre svp"));
    s += n;
    i++ ;
}
m = s / (i -1);
alert("Somme : " + s + ", Moyenne : " + m+ "\n le nombre de valeur saisies: " +(i- 1));
