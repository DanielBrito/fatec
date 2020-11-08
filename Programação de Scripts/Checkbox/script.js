function formatar()
{
	var cor = document.getElementById("cor").value;
	var editor = document.getElementById("editor");
	var negrito = document.getElementById("negrito").checked;
	var italico = document.getElementById("italico").checked;

	editor.style.color = cor;
	editor.style.fontWeight = (negrito)?"bold":"normal";
	editor.style.fontStyle = (italico)?"italic":"normal"
}

