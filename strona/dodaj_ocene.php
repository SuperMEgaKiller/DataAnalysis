<html>
<head></head>
<body>
<div align = "center">
<?php
$servername = "localhost";
$username = "Kornel";
$password = "kaktus";
$dbname = "Studenty";
$nr_ind = $_POST["student_id"];
$kod_kursu = $_POST["course_id"];
$ocena = $_POST["ocena"];

$connection = new mysqli($servername, $username,$password, $dbname);
if($connection->connect_error){
    die("Connection failed: " . $connection->connect_error);
}

$connection->query("CALL dodaj_ocene($nr_ind, \"$kod_kursu\", $ocena);");
$result = $connection->query("SELECT * FROM Oceny WHERE course_id = \"$kod_kursu\" AND student_id = $nr_ind;");

if($result->num_rows > 0){
echo "dodano ocene";
}
else
{
echo "nie powiodlo sie dodanie oceny";
}
$connection->close();
?>
<br>
<a href = <?php echo $_SERVER['HTTP_REFERER']; ?> >Powrot </a>
</div>

</body>
</html>