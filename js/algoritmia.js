function problema1(){

    var p1_input = document.querySelector('#p1-input').value;



    //tenemos que detectar el espacio, tendria que dividir la cadena y colocarla
    //dentro de un array

    var p1_array = p1_input.split(' ').reverse();

  

      //dentro de un array
      //dentrodeunarray
      //alreves
      //separar
    
    var p1_res = '';


    p1_array.forEach(function (palabra, i){
        if(i != 0 || i != p1_array.length) p1_res += ' ';
        p1_res += palabra;
    });

    document.querySelector('#p1-output').textContent = p1_res;

}

function problema2(){
    var p2_x1 =document.querySelector('#p2-x1').value;
    var p2_x2 =document.querySelector('#p2-x2').value;
    var p2_x3 =document.querySelector('#p2-x3').value;
    var p2_x4 =document.querySelector('#p2-x4').value;
    var p2_x5 =document.querySelector('#p2-x5').value;

    var p2_y1 =document.querySelector('#p2-y1').value;
    var p2_y2 =document.querySelector('#p2-y2').value;
    var p2_y3 =document.querySelector('#p2-y3').value;
    var p2_y4 =document.querySelector('#p2-y4').value;
    var p2_y5 =document.querySelector('#p2-y5').value;

    var v1 = [p2_x1,p2_x2,p2_x3,p2_x4,p2_x5];
    var v2 = [p2_y1,p2_y2,p2_y3,p2_y4,p2_y5];

    v1 = v1.sort(function(a,b){
        return b-a
    });

    v2 = v2.sort(function(a,b){
        return b-a
    });

    v2 = v2.reverse();

    var p2_producto = 0;

    for(var i=0; i<v1.length; i++){
        p2_producto += v1[i] * v2[i];
    }

    document.querySelector('#p2-output').textContent = 
    'Producto escalar minimo :' + p2_producto;
}

function problema3(){
    var p3_input = document.querySelector('#p3-input').value;
    var  checkOk= "ABCDEFGHIJKLMNOPQRSTVWXYZ";
    var allvalid = true;
    var p3_array= p3_input.split(',').replace().
    
    
    for(i= 0; i < p3_input.length; i++){
        var ch = p3_input.charAt(i);
        for(var j =0; j < checkOk.length; i++){
            if(ch == checkOk.charAt(j))
            break;
            if(j == checkOk.length){
                allvalid= false;
                break;
            }

            
        }

        if(allvalid){
            alert("Escribe solo letras en el camino nombre");
            formulario.nombre.focus();
            return false;
        }
    }
    



    document.querrySelector('#p3-output').textContent = p3_res;
}