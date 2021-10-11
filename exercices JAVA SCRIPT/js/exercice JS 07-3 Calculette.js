

var x = Number =window.prompt("Ecrivez un nombre");
var y = Number =window.prompt("Ecrivez un nombre");
//var o = window.prompt("Ecrivez un operateur");

//var o;

var r1 = parseInt(x)+parseInt(y);
var r2 = parseInt(x)-parseInt(y);
var r3 = parseInt(x)*parseInt(y);
var r4 = parseInt(x)/parseInt(y);

   
var o = window.prompt("Ecrivez un operateur");


while (o != "+" &&  o != "-" && o != "*" && o != "/")
 {

    o = window.prompt("Ecrivez un bon operateur SVP !!!");
    
}




if (o == "+" ||  o == "-" || o == "*" || o == "/")
{

}

if (o=="+")
{
    alert (r1)
}

if (o=="-")
{
    alert (r2)
}

if (o=="*")
{
    alert (r3)
}

if (o=="/"&&y!=0)
{
    alert (r4)
}

if (o=="/"&&y==0)
{
    alert ("ATTENTION: on ne peut pas diviser par 0")
}


