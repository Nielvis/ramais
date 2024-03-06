<?php

class Ramais {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function obterInformacoesRamais() {
        try {
            $query = "SELECT * FROM ramais_localhost";
            $stmt = $this->db->prepare($query);
            $stmt->execute();
            $ramais = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $ramais;
        } catch (PDOException $e) {
            throw new Exception("Erro ao obter informações dos ramais: " . $e->getMessage());
        }
    }
}

$servername = "localhost";
$username = "root";
$password = "12345";
$database = "ramais";

try {
    $db = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $ramais = new Ramais($db);

    echo json_encode($ramais->obterInformacoesRamais());
} catch(PDOException $e) {
    die("Erro na conexão com o banco de dados: " . $e->getMessage());
}
?>