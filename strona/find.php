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


$connection->close();
?>

<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

num = +"<?php echo $result->num_rows ?>";

dataFromSQL = [];
for (i=0; i < num; i++){
    <?php $row = $result->fetch_assoc();?>
    name = "<?php echo $row["course_id"] ?>";
    document.write(name);
    dataFromSQL.push({label:name, y: (i+1)*10});
}


window.onload = function () 
{
	var chart = new CanvasJS.Chart("chartContainer", 
	{
		title:
                          {
			text: "My First Chart in CanvasJS"              
		},
		data:               
		[{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "column",
			dataPoints: dataFromSQL
			
		}
		]
	});
	chart.render();
}
</script>

<div id="chartContainer" style="height: 300px; width: 100%;"></div>



</body>
</html>
