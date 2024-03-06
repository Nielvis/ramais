<?php
class RamaisMonitor {
    private $connection;

    public function __construct($connection) {
        $this->connection = $connection;
    }

    public function getInfoRamais() {
        $query = "SELECT * FROM ramais_localhost";
        $result = $this->connection->query($query);

        $info_ramais = array();
        if ($result) {
            while ($row = $result->fetch_assoc()) {
                $info_ramais[] = array(
                    'nome' => $row['nome'],
                    'host' => $row['host'],
                    'status' => ($row['status'] == 'OK'),
                    'port' => $row['Port']
                );
            }
            $result->free();
        }
        
        return $info_ramais;
    }
}

$servername = "localhost";
$username = "root";
$password = "12345";
$database = "ramais";
$connection = new mysqli($servername, $username, $password, $database);

if ($connection->connect_errno) {
    die("Erro na conexão com o banco de dados: " . $connection->connect_error);
}

$ramaisMonitor = new RamaisMonitor($connection);

echo json_encode($ramaisMonitor->getInfoRamais());

$connection->close();
?>
