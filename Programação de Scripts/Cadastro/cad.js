function cadastrar()
{
	var produto = document.getElementById("produto").value;
	var li = document.createElement("li");
	li.innerHTML = produto;
	var ul = document.getElementById("lista");
	ul.appendChild(li);
}

function ir()
{
	var url = document.
}