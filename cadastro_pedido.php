<?php
// Conectar ao banco
$conn = new mysqli("localhost", "root", "", "ecopuro");
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

// Buscar clientes
$clientes = $conn->query("SELECT id_cliente, nome FROM Cliente");

// Buscar produtos
$produtos = $conn->query("SELECT id_produto, nome FROM Produto");
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Pedido - EcoPuro</title>
    <link rel="stylesheet" href="estilo.css">
</head>
<body>
    <div class="container">
        <h2>Cadastro de Pedido - EcoPuro</h2>

        <form action="inserir_pedido.php" method="POST">
            <label>Cliente:</label>
            <select name="id_cliente" required>
                <option value="">-- Selecione --</option>
                <?php while($c = $clientes->fetch_assoc()) {
                    echo "<option value='{$c['id_cliente']}'>{$c['nome']}</option>";
                } ?>
            </select>

            <label>Produto:</label>
            <select name="id_produto" required>
                <option value="">-- Selecione --</option>
                <?php while($p = $produtos->fetch_assoc()) {
                    echo "<option value='{$p['id_produto']}'>{$p['nome']}</option>";
                } ?>
            </select>

            <label>Quantidade:</label>
            <input type="number" name="quantidade" min="1" required>

            <label>Valor Total do Pedido:</label>
            <input type="text" name="valor_total" required>

            <input type="submit" value="Cadastrar Pedido">
        </form>
    </div>
</body>
</html>

<?php $conn->close(); ?>
