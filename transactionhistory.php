<!DOCTYPE html>
<html>
<head>
<title>Table with database</title>
<?php include('navbar.html'); ?>
<br>

<style>
table {
border-collapse: collapse;
width: 100%;
height: 100%;
color: #588c7e;
font-family: 'Times New Roman';
font-size: 25px;
text-align: left;
}
th {
background-color: brown;
color: white;
}

tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>

<?php include "index.php";



echo "<p style='margin:auto'>HISTORY</p>";
$sql = "SELECT * FROM transaction";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  
  echo "<table>";
  echo "<tr>";
  echo "<th>TransferedFrom</th>";
  echo "<th>TransferedTo</th>";
  echo "<th>Amount</th>";
  echo "<th>DateAndTime</th>";
   echo "</tr>";
  while($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo '<td>' .$row["sender"] ."</td>";
    echo '<td>' .$row["receiver"] ."</td>";
    echo '<td>' .$row["balance"] ."</td>";
    echo '<td>' .$row["datetime"] ."</td>";
    echo "</tr>";
  }
  
  echo "</table>"; 
} else {
  echo "0 results";
}
$conn->close();
?>


</html>