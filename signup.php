<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel='stylesheet'><link rel="stylesheet" href="./style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300&display=swap" rel="stylesheet">

</head>
<body>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="signup.php" method="post">
			<h1>Create Account</h1>
			<span>use your email for registration</span><br><br>
			<input type="text" placeholder="Name" id="name" name="name" required/>
            <input type="email" placeholder="Email" id="email" name="email" required/>
			<input type="password" placeholder="Password" id="password" name="password" required/>
			<button>Sign Up</button><br>
			
		</form>
		
	</div>
	<div class="form-container sign-in-container">
		<form action="signup.php" method="post">
			<h1>Sign in</h1><br><br>

			<input type="text" placeholder="Username" name="nameid" required/>
			<input type="email" placeholder="email_id" name="emailid" required/>
			<input type="password" placeholder="Password" name="pass"/><br><br>

			
			<button>Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>

  <script  src="./script.js"></script>

</body>
</html>

<?php
session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "mocktest";

    $conn = mysqli_connect($servername, $username, $password, $db);

    if(!$conn){
        die("Connection failed: ".mysqli_connect_error());
    }

    if(isset($_POST['name'])){
        $uname = $_POST['name'];
        $pword = $_POST['password'];
        $email = $_POST['email'];
        $insert_sql = "INSERT INTO user_details(username_value, password_value, email_ID) VALUES('$uname', '$pword', '$email')";

        if(!mysqli_query($conn, $insert_sql)) {
            echo "Error: " . $insert_sql . "<br>" . mysqli_error($conn);
        }
    }

    mysqli_close($conn);
?>

<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "mocktest";

    $conn = mysqli_connect($servername, $username, $password, $db);

    if(!$conn){
        die("Connection failed: ".mysqli_connect_error());
    }

    if(isset($_POST['emailid'])){
        $Username = $_POST['nameid'];
        $email = $_POST['emailid'];
        $_SESSION['Usernameid']=$Username;
        $pass = $_POST['pass'];
        $flag = 0;

        $extract_sql = "SELECT * FROM user_details";
        $result = mysqli_query($conn, $extract_sql);

        if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)) {
                if(($row["email_ID"]==$email) && ($row["password_value"]==$pass) && ($row["username_value"]==$Username)){
                    header('location:quiz.php');
                    //echo "Successfully Loged In";
                    $flag = 1;
                }
            }
        }

        if($flag ==  0){
            echo "No Such User Available";
        }
    }
    mysqli_close($conn);
?>