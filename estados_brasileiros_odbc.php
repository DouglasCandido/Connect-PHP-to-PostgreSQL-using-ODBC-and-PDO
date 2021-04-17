<?php

header('Content-Type: text/html; charset=utf-8');

$user = "postgres"; 
$password = "postgres";

$ODBCConnection = odbc_connect("DRIVER={Devart ODBC Driver for PostgreSQL};Server=localhost;Database=BD 1;Port=5432;String Types=Unicode", $user, $password);

$SQLQuery = "SELECT * FROM tarefa_extra.uf";

$RecordSet = odbc_exec($ODBCConnection, $SQLQuery);

while (odbc_fetch_row($RecordSet)) {
    $result = odbc_result_all($RecordSet, "border=1");
}

odbc_close($ODBCConnection);

?>



