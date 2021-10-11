// var prenom;
// var nbre_prenom_saisi=1;

// do
// {
//     prenom = prompt("Saisissez le prenom N°" +nbre_prenom_saisi+);
// }
//     //alert("prenom = "+prenom);

// if(prenom!="" && prenom!=null)

// {
//     nbre_prenom_saisi++;
//     console.log("prenom "+nbre_prenom_saisi+" :"+prenom);
// }

// while(prenom!="" && prenom!=null)


// if(prenom ==null)
// {

// nbre_prenom_saisi--;

// alert("nombre de prénoms saisi vaut :"+ nbre_prenom_saisi);
// }





var firstname = '';
var count = 1;
do {
    firstname = window.prompt('Saisissez le prénom N° ' + count + '\n ou click sur Annuler pour arréter la saisie.');

 if (firstname != null && firstname != '') {
        console.log('Prénom N° ' + count + ': ' + firstname);
        count++;
    }

}
 while (firstname != null && firstname != '');        










// var prenom = Array();
// var i = 0;

// prenom[i++] = prompt("Saisissez le prenom N°1");

// while (prenom[i - 1] != null && prenom[i - 1] != "")
//     prenom[i++] = prompt("Saisissez le prenom N°" +i+ "\n Ou appuyer sur annuler pour quitter.");
// alert((i - 1) + " prénoms");
// i = -1;
// while (prenom[++i] != null)
//     alert(prenom[i]);
