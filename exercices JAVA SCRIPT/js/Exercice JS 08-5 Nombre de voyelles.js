var mot = window.prompt('Ecrivez un mot :')
var wordLength = mot.length;
var count = 0;

for (i = 0; i < wordLength; i++)
 {  
    switch (mot[i]) {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
        case 'y':

            count++;
            break;
        default: ' ';
    }
}
alert('les voyelles dans le mot ' + mot + ' : ' + count);
