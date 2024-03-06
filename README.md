## Teste analista junior

Neste teste você dispõe de um cenário fictício, onde há um painel de monitoramento de ramais que contem alguns bugs que precisam ser corrigidos. Este painel também deverá ser melhorado, o minimo de melhorias que deverá ser acrescentado serão 3. Abaixo uma relação dos itens que deverão ser corrigidos:

- Os ramais offiline não são exibidos corretamente no painel, para corrigir você deverá exibir os ramais indisponiveis, fazendo com que o card do painel fique cinza e traga um icone circular no canto superior direito com a cor cinza mais escura. 
- Os ramais que estão em pausa no grupo de callcenter não estão sendo exibidos corretamente, para corrigir você deverá exibir os ramais que estão com com status de pausa, trazendo um icone circular no canto superior direito com a cor laranja.
- Os card deverão exibir os nomes dos agentes que estão no grupo de callcenter SUPORTE (arquivo lib\filas)

### MELHORIAS  
Após a correção destes itens, você deverá aplicar ao menos 3 (três) melhorias neste sistema.

### OBRIGATÓRIO  
O teste também contará com algumas atividades obrigatórias:
- Transformar o arquivo lib\ramais.php em uma classe e utiliza-lo neste sistema. Após a criação da classe o arquivo lib\ramais.php não deverá ser mais utilizado.
- Apesar dos registros serem estaticos, deverá ser criada uma base de dados utilizando mysql ou mariadb para armazenar as informações de cada ramal, como numero, nome, IP,  status do ramal no grupo de callcente (disponivel, pausa, offiline, etc).
- As informações da tela devem ser atualizadas a cada 10 segundos utilizando ajax e estas informações devem ser atualizadas na base de dados. Para verificar se está sendo atualizado na base de dados você poderá alterar as informações dos arquivos  lib\filas e lib\ramais

### IMPORTANTE
0. Você não podera utilizar frameworks, o código terá de ser 100% seu.
1. O arquivo lib\filas simula as informações de um grupo de callcenter  
2. O arquivo lib\ramais simula as informações dos ramais  
3. Estes arquivos se completam  
4. Estes arquivos NÃO devem unidos em um só arquivo  
5. Estes arquivos poderão ser alterados apenas para teste do AJAX  
6. Ao concluir o teste, deverá ser encaminhado um arquivo .zip contendo todo o código, dump da base de dados e instruções de instalação e a lista das melhorias aplicadas.  


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Olá, eu sou o Nielvis, e este é o meu teste prático para a vaga de programador PHP com o framework CodeIgniter(L5 NETWORKS). No código que desenvolvi, apresento uma página HTML dedicada ao monitoramento de ramais. Utilizando JavaScript, realizo requisições assíncronas a um backend em PHP para obter informações atualizadas sobre o status dos ramais e, em seguida, exibo essas informações dinamicamente na página.

A estrutura HTML consiste em um painel de monitoramento de ramais, onde cada ramal é representado por um cartão. O JavaScript é responsável por realizar requisições ao arquivo PHP chamado "Ramais.php", o qual retorna os dados dos ramais no formato JSON. Posteriormente, esses cartões são atualizados de forma dinâmica na página. Para garantir uma atualização constante das informações, as requisições são feitas a cada 10 segundos, utilizando a função setInterval.

No backend em PHP, criei diversas classes e funções dedicadas ao gerenciamento do banco de dados. Implementei uma lógica que busca informações sobre os ramais em um banco de dados MySQL, formata esses dados e os retorna no formato JSON. É importante ressaltar que existem diferentes implementações de classes PHP para obter essas informações, cada uma utilizando métodos distintos para interagir com o banco de dados e retornar os dados dos ramais.

Resumindo, o código que desenvolvi cria uma aplicação web voltada ao monitoramento de ramais. Utilizando uma combinação de HTML, CSS, JavaScript e PHP, consigo atualizar dinamicamente a página com informações em tempo real provenientes do backend em PHP. Apesar de possíveis erros, estou sempre em busca de melhorias contínuas. O código reflete o meu trabalho e comprometimento com a qualidade e eficiência(pode ter algumas aberreções ou se perguntarem:"COMO ELE FEZ ISSO?", dev junior né). Mas brincadeiras a parte, obrigado pela a oportunidade. 

Algumas melhorias feitas: 
Implementação de Classes e Funções PHP:
Foram criadas classes e funções PHP para encapsular a lógica relacionada à manipulação do banco de dados e obtenção dos dados dos ramais. Isso promove uma melhor modularidade e reutilização de código, tornando-o mais limpo e fácil de entender.

Padronização das Consultas SQL:
As consultas SQL foram padronizadas e centralizadas em métodos ou funções PHP, reduzindo a duplicação de código e facilitando futuras alterações ou otimizações.

Uso de PDO para Acesso ao Banco de Dados:
O uso de PDO (PHP Data Objects) para acessar o banco de dados em vez de funções de acesso direto ao MySQL, como mysqli, melhora a segurança e a portabilidade do código, além de fornecer recursos adicionais, como manipulação de exceções.
