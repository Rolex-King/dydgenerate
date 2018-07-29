$(document).ready(function(){

// $(document).ready(alert("La pagina se ha cargado completamente Sandero-Kun"));

// Con la siguiente estruccion estamos diciendole al contenedor del banner que va a tener un alto exactamente al alto del navegagor
  $("#banner").css({"height": "600px"});


var flag=false;
// La siguiente variable guardara la posicion del scroll
var scroll;

// Esta instruccion esta indicando que cada vez que hagamos scroll se ejecute cierta funcion
// La variable nos guardara es la distancia en pixeles desde la esquina superior izquierda hasta todo el scroll que se haga
$(window).scroll(function(){
	scroll= $(window).scrollTop();


// Vamos a poner un condicional que cuando el scroll llegue a cierto punto la imagen se meta en el menu

// Estamos indicando que cuando el scroll sea mayor de 200 se aplique ciertas caracteristicas css
if(scroll > 200){

	if(!flag){

	$("#logo").css({
	"margin-top": "-5px", "width": "50px", "height": "50px"	});

	$("#cabeceraPrincipal").css({"background-color": "#3C3C3C"});

flag=true;

}

}else{
	if(flag){

	$("#logo").css({
	"margin-top": "150px", "width": "250px", "height": "250px"});

		$("#cabeceraPrincipal").css({"background-color": "transparent"});


	flag=false;
}

}

});
});