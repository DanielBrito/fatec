function mostrarData()
{

	document.getElementById("data").innerHTML = Date();
	console.log(Date());
}

function trocar (foto, img)
{
	//var img = document.getElementById("foto");
	img.src = foto;
}

function redimensionar()
{
	var img = document.getElementById("mario");
	if(event.keyCode == 38)
	{
		img.height = img.height + 10;
	}
	if(event.keyCode == 40)
	{
		img.height = img.height - 10;
	}
}

function calcular()
{
	var nota1 = parseFloat(document.getElementById("nota1").value);
	var nota2 = parseFloat(document.getElementById("nota2").value);
	var media = (nota1+nota2)/2;
	document.getElementById("media").innerHTML = media;
}