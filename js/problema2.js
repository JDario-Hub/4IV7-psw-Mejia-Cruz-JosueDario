

function validarn(e){
    var teclado = (document.all)?e.KeyCode:e.which;
    if(teclado == 8)return true;

    var patron =/[0-9\d] ./;

    var test = String.fromCharCode(teclado);
    return patron.test(prueba);

}

function calcular(){
    var valor = document.formulario.sueldo.value;
    var result = parseInt(valor);
    var total =  result * 10

    document.formulario.resultado.value = "$"+ total;
}
