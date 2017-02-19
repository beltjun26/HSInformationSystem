<?php 
	session_start();
	require 'connect.php';
	$query = $conn-> query("SELECT cashier_name as username, cashier_password as password FROM `cashier` where cashier_name='{$_POST['username']}' and cashier_password = '{$_POST['password']}' UNION SELECT username, password from admin where username = '{$_POST['username']}' and password = '{$_POST['password']}'  UNION select username, password from teacher where username = '{$_POST['username']}' and password = '{$_POST['password']}'");
	if($conn->affected_rows){
		echo "success";
		$result = $query->fetch_assoc();
		$_SESSION['userid'] = $result['username'];
	}
	else{
		echo "fail";
	}
 ?>