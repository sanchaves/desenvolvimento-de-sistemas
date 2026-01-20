// Variáveis globais
function somar() {
    let num1 = parseFloat(document.getElementById("n1").value);
    let num2 = parseFloat(document.getElementById("n2").value);
    document.getElementById("resultado").innerHTML = num1 + num2;
}

function subtrair() {
    let num1 = parseFloat(document.getElementById("n1").value);
    let num2 = parseFloat(document.getElementById("n2").value);
    document.getElementById("resultado").innerHTML = num1 - num2;
}

function multiplicar() {
    let num1 = parseFloat(document.getElementById("n1").value);
    let num2 = parseFloat(document.getElementById("n2").value);
    document.getElementById("resultado").innerHTML = num1 * num2;
}

function dividir() {
    let num1 = parseFloat(document.getElementById("n1").value);
    let num2 = parseFloat(document.getElementById("n2").value);
    document.getElementById("resultado").innerHTML = num1 / num2;
}
