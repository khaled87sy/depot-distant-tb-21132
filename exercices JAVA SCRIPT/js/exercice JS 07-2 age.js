

var ladate=new Date();

var annee_cours= ladate.getFullYear();
var an = window.prompt("Ecrivez l'annee de votre naissance");

while(an!=null)
{


                while (an=="") 
                {
                        an = window.prompt("Ecrivez l'annee de votre naissance SVP");
                }

                var age = annee_cours - an;
                if(age >= 18)
                {
                    alert("Vous avez " +age+" ans, Vous Etes Majeur");
                }
                else
                {
                    alert("Vous avez " +age+" ans, vous etes mineur");
                }

                an=null;

}
