// Exercice 1 - Calcul du nombre de jeunes, de moyens et de vieux

        var age = 0;
        var moins20 = 0;
        var entre2040 = 0;
        var plus40 = 0;
        var verify = /^[0-9]+$/;

        while (age != 100)
        {
            age = parseInt(prompt("Entrez l'age s.v.p."))

            if (verify.test(age)===false) 
                {
                    alert("Entrez un nombre s.v.p");
                }
            if (age<20)
            {
                moins20++
            }
            else if (age>=20 && age<=40)
             {
                entre2040++
            }
            else if (age>40 && age<=100) 
            {
                plus40++ 
            }

        }
        alert("les moins de 20ans : " +moins20+ "\n entre 20-40 : "+entre2040+ " \n plus de 40 : "+plus40 )

















































    // Déclaration la function
    // function lesages()
    // {
    //     var age = 0;
    //     var j = 0;
    //     var m = 0;
    //     var v = 0;
    //     var verify = /^[0-9]+$/;

    //                 age =  prompt("Entrez l'age s.v.p.")
    //                 if (age == null) {
    //                     window.alert("Au revoir");
    //                 } 
    //                 else {
    //                     if (verify.test(age)===false) 
    //                     {
    //                         alert("Entrez un nombre s.v.p");
    //                             lesages()  

    //                     } 

    //                     else 
    //                     {
    //                         while (age != 100) 
    //           {
    //             age = parseInt(prompt("Entrez l'age s.v.p."))

    //                         if (age > 100)
    //                         {
    //                             v++;
    //                         } 
    //                         else if (age < 20)
    //                         {
    //                             j++;
    //                         } 
    //                         else if 
    //                         (age >= 20 && age <= 40) {
    //                             m++;
    //                         } 
    //                         else if 
    //                         (age >= 41 && age <= 99) {
    //                             v++;
    //                         } 
    //                 }
    //                     }
    //                 }

    //                 alert("vous avez \n " + j + " jeunes \n  " + m + " moyens \n  " + v + " vieux");
    //             }

    //             lesages()

                