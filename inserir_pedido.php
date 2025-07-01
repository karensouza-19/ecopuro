<?php
$conn = new mysqli("localhost", "root", "", "ecopuro");
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

$id_cliente = $_POST['id_cliente'];
$id_produto = $_POST['id_produto'];
$quantidade = $_POST['quantidade'];
$valor_total = $_POST['valor_total'];
$data_pedido = date("Y-m-d");

// Validação
if (empty($id_cliente) || empty($id_produto) || empty($quantidade) || empty($valor_total)) {
    echo "Erro: Todos os campos são obrigatórios.";
    exit;
}

// Inserir pedido na tabela Pedido
$sql_pedido = "INSERT INTO Pedido (id_cliente, data_pedido, valor_total)
               VALUES ('$id_cliente', '$data_pedido', '$valor_total')";

if ($conn->query($sql_pedido) === TRUE) {
    $id_pedido = $conn->insert_id; // pega o id do pedido recém-criado

    // Buscar preço unitário do produto
    $res = $conn->query("SELECT preco FROM Produto WHERE id_produto = $id_produto");
    $preco_unitario = $res->fetch_assoc()['preco'];

    // Inserir item na tabela Item_Pedido
    $sql_item = "INSERT INTO Item_Pedido (id_pedido, id_produto, quantidade, preco_unitario)
                 VALUES ('$id_pedido', '$id_produto', '$quantidade', '$preco_unitario')";

    if ($conn->query($sql_item) === TRUE) {
        echo "Pedido cadastrado com sucesso!";
    } else {
        echo "Erro ao salvar item do pedido: " . $conn->error;
    }

} else {
    echo "Erro ao cadastrar pedido: " . $conn->error;
}

$conn->close();
?>
