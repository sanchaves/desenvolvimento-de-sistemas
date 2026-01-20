function converterMoeda() {
    // Obtém a cotação do dólar inserida pelo usuário
    let cotacaoDolar = parseFloat(document.getElementById("cotacao").value);

    // Obtém o valor em reais inserido pelo usuário
    let valorReais = parseFloat(document.getElementById("reais").value);
    // Obtém o valor em dólares inserido pelo usuário
    let valorDolar = parseFloat(document.getElementById("dolar").value);



    // Verifica se os valores inseridos são válidos
    if (isNaN(cotacaoDolar) || isNaN(valorReais) || isNaN(valorDolar)
        || cotacaoDolar < 0 || valorReais < 0 || valorDolar < 0) {
        document.getElementById("resultado").innerText = "Por favor, insira valores válidos.";
        return;
    }

    // Converte o valor de reais para dólares
    let valorEmDolares = valorReais / cotacaoDolar;

    // Converte o valor de reais para reais (mantendo o cálculo da conversão)
    let valorEmReais = valorDolar * cotacaoDolar;

    // Exibe os valores convertidos na página
    document.getElementById("resultado").innerHTML =
        `O valor em dólares é: $${valorEmDolares.toFixed(2)} <br>
                 O valor em reais é: R$${valorEmReais.toFixed(2)}`;
}