async function carregaDados() {
    const response = await fetch("http://localhost:1212/viewers")
    const dados = await response.json();
    console.log(dados);
    
}

carregaDados();