<?php 
	require 'connect.php';
	if(isset($_SESSTION['userid'])){
		header("Location:home.php");
	}
	
	$result = $query->fetch_array()
 ?>