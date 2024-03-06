function fetchData(url) {
    fetch(url)
    .then(response => response.json())
    .then(data => {
        document.getElementById('cartoes').innerHTML = "";
        data.forEach(ramal => {
            let statusClass = '';
            let statusText = '';
            switch (ramal.Status) {
                case 'Offline':
                    statusClass = 'Offline';
                    statusText = 'Offline';
                    break;
                case 'Pausa':
                    statusClass = 'pausa';
                    statusText = 'Pausa';
                    break;
                case 'Ocupado':
                    statusClass = 'ocupado';
                    statusText = 'Ocupado';
                    break; 
                default:
                    statusClass = 'disponivel';
                    statusText = 'Disponível';
            }

            const nomeAgente = (ramal.Fila === 'SUPORTE') ? ramal.Nome : 'N/A';

            const cartao = `
                <div class="cartao ${statusClass}">
                    <div>Ramal: ${ramal.name_username}</div>
                    <div>Nome: ${ramal.nome}</div>
                    <div>Host: ${ramal.Host}</div>
                    <div>Status: ${ramal.Status}</div>
                    <span class="icone-posicao"></span>
                </div>`;
            document.getElementById('cartoes').insertAdjacentHTML('beforeend', cartao);
        });
    })
    .catch(error => console.error('Erro:', error));
}
fetchData('Ramais.php');
setInterval(() => fetchData('Ramais.php'), 10000);