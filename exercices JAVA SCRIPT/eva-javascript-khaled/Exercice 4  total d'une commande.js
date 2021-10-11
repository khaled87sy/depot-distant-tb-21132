var PU=0;
var QTECOM=0;
var PAP=0;
var REM=0;
var PORT=0;

PU=prompt("Entrez le prix unitaire s.v.p");
QTECOM=prompt("Entrez la quantité commandée s.v.p.");
TOT=parseInt(PU)*parseInt(QTECOM);
if (TOT>=100 && TOT <=200)
{
    REM=(5*TOT) / 100;
}
if (TOT>201) 
{
    REM=(10*TOT) / 100;
}
var remise = TOT - REM;
if (remise<=500)
 {
  PORT= (2*remise) / 100; 
  if (PORT<6)
   {
     PORT=6; 
  }
}
if (remise>500) 
{
    PORT=0;
}
PAP= remise + PORT
alert("Le prix à Payer est : "+ PAP+ "\nLa remise est : " +REM+ "\nLes frais de Port sont de: " +PORT )


