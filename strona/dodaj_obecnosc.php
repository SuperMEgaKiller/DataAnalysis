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
$data = $_POST["data"];

$connection = new mysqli($servername, $username,$password, $dbname);
if($connection->connect_error){
    die("Connection failed: " . $connection->connect_error);
}

$connection->query("CALL dodaj_obecnosc($nr_ind, \"$kod_kursu\", \"$data\");");
$result = $connection->query("SELECT * FROM Obecnosci WHERE course_id = \"$kod_kursu\" AND student_id = $nr_ind AND data = \"$data\";");

if($result->num_rows > 0){
echo "dodano obecnosc";
}
else
{
echo "nie powiodlo sie dodanie obecnosci";
}
$connection->close();
?>
<br>
<a href = <?php echo $_SERVER['HTTP_REFERER']; ?> >Powrot </a>
</div>

</body>
</html>