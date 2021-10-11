function produit(x,y)
{
    var r = x*y;
    return r;
}

function cub(c)
{
    var rc = c*c*c;
    return rc;
}



var a =parseInt(prompt("Entrez un nombr"));
var b=parseInt(prompt("Entrez un multiplication"));
var r1=produit(a,b);
var rc1= cub(a);
document.write("Le produit de "+a+"*"+b+ " égale à "+ r1 +" <br> Le cube de "+a+ " égale à" +rc1);






