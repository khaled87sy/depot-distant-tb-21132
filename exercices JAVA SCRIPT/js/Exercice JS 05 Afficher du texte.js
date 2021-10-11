// JS 05 : Afficher du texte

var nom = window.prompt("Entrez votre nom");

var prenom = window.prompt("Entrez votre prénom");



var reponse = window.confirm("Etes-vous un homme?"); 
if (reponse == true)
{
alert("bonjour monsieur " + nom + " " +prenom + "\n Bienevenue sur notre site web!" );

}
else
{
    alert("bonjour Madame " + nom + " " +prenom + "\n Bienevenue sur notre site web!" );
}






