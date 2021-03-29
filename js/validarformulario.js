function validar(formulario){
    /*Obtener datos*/
    if(formulario.nombre.value.length < 1){
        alert("Escribe mas de 5 caracteres en el campo nombre")
        formulario.nombre.focus();
        return false;
    }

    /*Crear una opcion para que solo se pueda ingresar
    letras del campo*/

    var checkOk = "whherhjhrhejer" + "fdfkjdsbbflbsd";

    var checkStr = formulario.nombre.value;

    var allvalid =  true;

    for(var i= 0; i < checkStr.length; i++){
        var ch = checkStr.charAt(i);
        for(var j =0; j < checkOk.length; i++){
            if(ch == checkOk.charAt(j))
            break;
            if(j == checkOk.length){
                allvalid= false;
                break;
            }
        }

        if(!allvalid){
            alert("Escribe solo letras en el camino nombre");
            formulario.nombre.focus();
            return false;
        }
    }
}

/*Ingresar numeros */

var checkOk = "0123456789";

var checkStr = formulario.edad.value;

var allvalid =  true;

for(var i= 0; i < checkStr.length; i++){
    var ch = checkStr.charAt(i);
    for(var j =0; j < checkOk.length; i++){
        if(ch == checkOk.charAt(j))
        break;
        if(j == checkOk.length){
            allvalid= false;
            break;
        }
    }

    if(!allvalid){
        alert("Escribe solo letras en el camino nombre");
        formulario.edad.focus();
        return false;
    }

    var txt = formulario.email.value;

    var b = /[^@\s]+ @[^@\.\s] (\.[^@\.\s]+)+$/;

    alert("Email" + (b.test(txt)?"":"no")+ "valido");

    return b.test(txt);
}


 /*Validar entrada de un correo*/

 