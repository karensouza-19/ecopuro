<html>
    <body>

<?php
// Conexão com o banco
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecopuro";

// Criando conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificando conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Consulta SQL
$sql = "SELECT id_cliente, nome, email, telefone, endereco FROM Cliente";
$result = $conn->query($sql);

echo "<h2>Lista de Clientes Cadastrados na EcoPuro</h2>";

if ($result->num_rows > 0) {
    echo "<table border='1' cellpadding='5'>";
    echo "<tr><th>ID</th><th>Nome</th><th>Email</th><th>Telefone</th><th>Endereço</th></tr>";

    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["id_cliente"] . "</td>";
        echo "<td>" . $row["nome"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["telefone"] . "</td>";
        echo "<td>" . $row["endereco"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "Nenhum cliente encontrado.";
}

$conn->close();
?>
</body>
</html>
