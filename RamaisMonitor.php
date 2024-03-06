<?php

class RamaisMonitor {
    private $status_ramais;

    public function __construct() {
        $this->status_ramais = $this->getStatusRamais();
    }

    private function getStatusRamais() {
        $status_ramais = array();

        
        $servername = "localhost";
        $username = "root";
        $password = "12345";
        $database = "ramais";

        $conn = new mysqli($servername, $username, $password, $database);

        if ($conn->connect_error) {
            die("Erro na conexão com o banco de dados: " . $conn->connect_error);
        }

        $sql = "SELECT name_username, host, status FROM ramais_localhost";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $status_ramais[] = array(
                    'numero_ramal' => $row["numero_ramal"],
                    'nome_usuario' => $row["nome"],
                    'host' => $row["host"],
                    'status' => $row["status"],
                    'online' => $row["online"]
                );
            }
        } else {
            echo "Nenhum resultado encontrado";
        }
        $conn->close();

        return $status_ramais;
    }
    public function getInfoRamais() {
        return $this->status_ramais;
    }
}

try {
    $ramaisMonitor = new RamaisMonitor();
    echo json_encode($ramaisMonitor->getInfoRamais());
} catch (Exception $e) {
    echo json_encode(array('error' => $e->getMessage()));
}

?>
