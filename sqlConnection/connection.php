<?php 
$conn = new mysqli("103.184.19.8:3306","internsql","garuda@2023!","user");
$query = mysqli_query($conn,"select * from user");
$data = mysqli_fetch_all($query,MYSQLI_ASSOC);
echo json_decode($data);

?>