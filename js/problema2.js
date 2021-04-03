

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
    var intereses = result * 0.10;
    var suma = intereses * 3;
    var total = suma + result;

    document.formulario.resultado.value = "$"+total;
}
