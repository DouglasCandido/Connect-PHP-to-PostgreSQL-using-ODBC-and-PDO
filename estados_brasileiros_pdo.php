<?php

$params = 'pgsql:host=\'localhost\';port=\'5432\';dbname=\'BD 1\';user=\'postgres\';password=\'postgres\'';


try {

    $connection = new PDO($params);

    if($connection){

        echo "Connectado ao banco de dados com sucesso!";

        echo "<br />";

        echo "<br />";

    }

    $query_select_all = 'SELECT * from tarefa_extra.uf';

    $result = $connection->query($query_select_all);

    if($result === false) {

        die("Ocorreu um erro ao executar a query!");

        echo "<br />";

        echo "<br />";

    }

} catch (PDOException $e) {

    echo $e->getMessage();

}

?>

<!DOCTYPE html>
<html>
<head>
<title>Estados do Brasil</title>
<link href="bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <h1>Estados do Brasil</h1>
    <table class="table table-striped table-bordered" style="width:300px;">
        <thead>
            <tr>
                <th>Sigla</th>
                <th>Nome</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $result->fetch(PDO::FETCH_ASSOC)) : ?>
            <tr>
                <td><?php echo htmlspecialchars($row['sigla']); ?></td>
                <td><?php echo htmlspecialchars($row['nome']); ?></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>
</html>

