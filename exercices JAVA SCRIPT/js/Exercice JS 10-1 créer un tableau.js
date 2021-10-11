// Exercice 1
// Ecrivez un programme permettant de créer un tableau, dont la taille est saisie au clavier.

var tableau = new Array();
var taille = parseInt(prompt("entrez la taille du tableau"));

for (i = 0; i < taille; i++)
 {
    var valeur = prompt("Entrez une valeur s.v.p.");
    tableau[i] = valeur;
}
document.write("Le tableau contient : " +tableau.length+ "  éléments ,  les elements du tableau :  ")
document.write(tableau);







