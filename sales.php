<?php
	include 'includes/session.php';

	if(isset($_POST['card_number'])){		
		$date = date('Y-m-d');
		$cardnum = '**** **** **** '.substr($_POST['card_number'], -4);
		$exp_date = $_POST['expiry_year'].'-'.$_POST['expiry_month'].'-01';
		$cvv = $_POST['password_confirm'];
		$conn = $pdo->open();

		try{
			
			$stmt = $conn->prepare("INSERT INTO sales (user_id, sales_date, ccnum, expdate, seccode) VALUES (:user_id, :sales_date, :ccnum, :expdate, :seccode)");
			$stmt->execute(['user_id'=>$user['id'], 'sales_date'=>$date, 'ccnum'=>$cardnum, 'expdate'=>$exp_date, 'seccode'=>$cvv]);
			$salesid = $conn->lastInsertId();
			
			try{
				$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products ON products.id=cart.product_id WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);

				foreach($stmt as $row){
					$stmt = $conn->prepare("INSERT INTO details (sales_id, product_id, quantity) VALUES (:sales_id, :product_id, :quantity)");
					$stmt->execute(['sales_id'=>$salesid, 'product_id'=>$row['product_id'], 'quantity'=>$row['quantity']]);
				}

				$stmt = $conn->prepare("DELETE FROM cart WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);

				$_SESSION['success'] = 'Order Placed Succeessfully. Thank you.';

			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}

		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	
	header('location: profile.php');
	
?>