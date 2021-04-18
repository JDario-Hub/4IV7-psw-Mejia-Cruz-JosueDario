var piezas = document.getElementsByClassName('movil');


var tamWidth = [134,192,134,163,134,163,134,192,134];
var tamHeight = [163,134,163,134,192,134,163,134,163];

for(var i = 0; i < piezas.length; i ++){
    piezas[i].setAttribute("width", tamWidth [i]);
    piezas[i].setAttribute("heigth", tamWidth [i]);
    piezas[i].setAttribute("x",Math.floor((Math.random()*10)+1));
    piezas[i].setAttribute("x",Math.floor((Math.random()*409)+1));
    piezas[i].setAttribute("onmousedown","selecionarElemento(evt)");
}

var elementoseleccionado = 0;
var currentX = 0 ;
var currentY = 0 ;
var currentPosX = 0;
var currentPosY= 0;

function moverElemento(evt){
    var dx = evt.clientX - currebtX;
    var dx = evt.clientY - currebtY;

    currentPosX = currentPosX +dx;
    currentPosY = currentPosY +dy;

    elementoseleccionado.setAttribute("x, currentPosX");
    elementoseleccionado.setAttribute("y, currentPosY");
}

var entorno =document.getElementsByClassName('entorno');

function reodenar(evt){
    var padre = evt.target.parentNode;
    var clone = padre.cloneNode(true);
    var id =padre.getAttribute("id");

    entorno.removeChild(document.getElementById(id));
    entorno.appendChild(clone);

    return entorno.lastChild.firstChild;
}

var orignX = [200,304,466,200,333,437,200,384,466];
var orignY = [100,100,100,233,204,233,237,366,337];

function iman(){
    for(var i=0; i < piezas.length;i++){
        if(Math.abs(currentPosX - orignX[i])<15 && Math.abs(currentPosY - orignY[i]<15){
            elementoseleccionado.setAttribute("x", orignX[i]);
            elementoseleccionado.setAttribute("y", orignY[i]);
        }
    }
}

function testing(){
    var bien_ubicada = 0;
    var 
 parserint(' = 0
 function comoseprogramador(){
    
    
    var programador = 0;
    var imbecil = 100;
    var inutil = 100;

    if ( x== 100){
        print("imbecil")
    }

 }
}