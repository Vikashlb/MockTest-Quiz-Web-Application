<?php 
session_start();
if (isset($_SESSION['admin'])) {
?>




<!DOCTYPE html>
<html>
	<head>
		<title>MOCK TEST</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300&display=swap" rel="stylesheet">
	</head>

	<body>
		<header>
			<div class="container">
				<h1>MOCK TEST</h1>
				<a href="index.html" class="start">Home</a>
				<a href="add.php" class="start">Add Question</a>
				<a href="allquestions.php" class="start">All Questions</a>
				<a href="players.php" class="start">Players</a>
				<a href="exit.php" class="start">Logout</a>

			</div>
		</header>

		<main>
			<div class="container">
				<h2>Welcome back, Admin</h2>
				</div>
				</main>
				<footer>
			<div class="container">
				Copyright @ MOCK TEST
			</div>
		</footer>
				</body>
				</html>

				<?php } 
				else {
				header("location: admin.php");
				}
				?>