


// JS 16 : LES FORMULAIRES
// declaration function

function validationForm()
{
let vrtext=  RegExp("^[0-9A-Za-z]+$");
let vrnum=  RegExp("^(([0-8][0-9])|(9[0-5]))[0-9]{3}$");
let vremail=  RegExp("^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$");
let societe= document.getElementById("soc").value;
let personne= document.getElementById("per").value;
let code= document.getElementById("postal").value;
let mail= document.getElementById("email").value;
let vill= document.getElementById("ville").value;


// les conditions
if (vrtext.test(societe)== false)
{
alert("Entrez le nom de société s.v.p.!");
return false;


}
if (vrtext.test(personne)==false)
{
alert("entrez le nom de la personne à contacter s.v.p.!");
return false;


}

if (vrnum.test(code)==false&&code.length!=5)
 {
    alert("entrez le code postal sur 5 chiffres s.v.p.!");
    return false;

}
if (vrtext.test(vill)== false)
{
alert("Entrez la ville s.v.p.!");
return false;


}

if (mail =="")
{
    alert("entrez L'email address s.v.p.!");
    return false;


}
if (vremail.test(mail==false))
 {
    alert("entrez un bon address mail");
    return false;


}



return true;
}
