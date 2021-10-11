var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
var prenom = prompt("Entrez un prénom");
if (tab.includes(prenom))
{
tab.splice(tab.indexOf(prenom), 1,);
tab.push(' " " ')
alert(tab.join("-"));
}
else
{
alert("DESOLE IL N'Y A PAS TELL PRENOM")
}



       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
    //    var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
    //     var prenom = prompt("Entrez un prénom");
   
    // for (let i = 0; i < tab.length; i++) {  
    //     tab[i] = tab[i].toLowerCase();
    // };
    // prenom2 = prenom.toLowerCase();
   
    // var search = tab.includes(prenom2);  
   
    // if (search)
    // {
    //     tab.splice(tab.indexOf(prenom2), 1,);
    //     tab.push(' " " ')
    //     alert(tab.join("-"));

   
    // }
    
    // else
    // {
    //     alert("DESOLE IL N'Y A PAS TELL PRENOM")
    // }
    
