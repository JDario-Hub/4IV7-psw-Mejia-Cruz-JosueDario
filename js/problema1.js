function validarn(e){
    var teclado = (document.all)?e.KeyCode:e.which;
    if(teclado == 8)return true;

    var patron =/[0-9\d] ./;

    var test = String.fromCharCode(teclado);
    return patron.test(prueba);

}

function interes (){
    var valor = document.formulario.cantidad.value;
    var result = parseInt(valor);
    var intereses = result * 0.02;
    var total = result + intereses;

    document.formulario.sueldoti.value = "$"+total;
}

function borrar(){
    document.formulario.sueldoti.value= "";
    document.formulario.cantidadi.value="";

    
}