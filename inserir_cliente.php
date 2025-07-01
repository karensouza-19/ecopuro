<html>
<body>
<?php
// Conexão com o banco de dados MySQL no WAMP
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecopuro";

// Criando a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Checando a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Recebendo os dados do formulário
$nome = $_POST['nome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$endereco = $_POST['endereco'];

// Evita cadastro com campos vazios
if (empty($nome) || empty($email) || empty($telefone) || empty($endereco)) {
    echo "Erro: Preencha todos os campos.";
    exit;
}
// Inserindo no banco
$sql = "INSERT INTO Cliente (nome, email, telefone, endereco) VALUES ('$nome', '$email', '$telefone', '$endereco')";

if ($conn->query($sql) === TRUE) {
    echo "Cliente cadastrado com sucesso!";
} 
else {
    echo "Erro ao cadastrar: " . $conn->error;
}

$conn->close();
?>
</body>
</html>
</html> 
