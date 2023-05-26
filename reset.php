<?php
	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	include 'includes/session.php';

	if(isset($_POST['reset'])){
		$email = $_POST['email'];

		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM users WHERE email=:email");
		$stmt->execute(['email'=>$email]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){			
			try{
				$password = password_hash('123456', PASSWORD_DEFAULT);
				$stmt = $conn->prepare("UPDATE users SET password=:password WHERE id=:id");
				$stmt->execute(['password'=>$password, 'id'=>$row['id']]);
				
				$_SESSION['success'] = 'Password reset done. You can login with your new password is <b>123456</b>. Please login to your account and change
				 password.';
			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
		}
		else{
			$_SESSION['error'] = 'Email not found';
		}

		$pdo->close();

	}
	else{
		$_SESSION['error'] = 'Input email associated with account';
	}

	header('location: password_forgot.php');

?>