<html>
<head></head>
<body>
<?php
$servername = "localhost";
$username = "Kornel";
$password = "kaktus";
$dbname = "Studenty";
$nr_ind = $_POST["student_id"];

$connection = new mysqli($servername, $username,$password, $dbname);
if($connection->connect_error){
    die("Connection failed: " . $connection->connect_error);
}

$sql = "SELECT * FROM Obecnosci WHERE student_id = $nr_ind";
$result = $connection->query($sql);

if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        echo "indeks: ".$row["student_id"]." - kurs: ".$row["course_id"]." - data: ".$row["data"]. "<br>";
    }
}
else{
    echo "0 results";
}
echo $result->num_rows;

$connection->close();
?>

<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">
window.onload = function () {
var num = "<?php echo $result->num_rows ?>";
var chart = new CanvasJS.Chart("chartContainer", {
title:{
text: "My First Chart in CanvasJS"              
},
data: [              
{
type: "column", dataPoints: [
{ label: "apple",  y: num },
{ label: "orange", y: 15  },
{ label: "banana", y: 25  },
{ label: "mango",  y: 30  },
{ label: "grape",  y: 28  }
]
}
]
});
chart.render();
}
</script>

<div id="chartContainer" style="height: 300px; width: 100%;"></div>



</body>
</html>
