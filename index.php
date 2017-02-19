<!DOCTYPE html>
<html>
<head>
	<title>HSIS Login</title>
	<link rel="stylesheet" type="text/css" href="view/css/index.css">
	<script type="text/javascript" src="control/javascript/jquery.js"></script>
	<script type="text/javascript" src="control/javascript/login.js"></script>

</head>
<body>
	<h1>HSIS</h1>
	<div class="center">
		<div id="error">Username or password doesn't match</div>
		<form id="login">
			<label>USERNAME: </label>
			<input type="text" name="username" required="required" />
			<label>PASSWORD: </label>
			<input type="password" name="password" required="required"/>
			<input type="submit" name="submit" value="LOGIN"/>
		</form>	
	</div>
	

</body>
</html>