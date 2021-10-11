// Eaercice 2 : Table de TableMultiplication


//declaration fonction
function TableMultiplication()
{
    var verify = RegExp = /^[0-9]+$/;
    var result 
    var i = 1;
    var array = [];
    var a = window.prompt("entrez un nombre pour multiplier");

    if (a == null) {
        window.alert("au revoir")
    }
    else {
        a = parseInt(a);
        if (verify.test(a)===false)
        {
            window.alert("vous devez entrez un nombre s.v.p");
             TableMultiplication()
        }
        do
        {
            result = i * a;
            array[i] = (i + " * " + a + " = " + result + " \n ");
            i++;
        }
        while (i <= 10)
        window.alert(array);
    }
}
TableMultiplication()
