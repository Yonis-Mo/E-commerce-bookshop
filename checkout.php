<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<h1 class="page-header">CHECKOUT</h1>
	        		<div class="box box-solid">
	        			<div class="box-body">
		        		<table class="table table-bordered">
		        			<thead>		        				
		        				<th>Photo</th>
		        				<th>Name</th>
		        				<th>Price</th>
		        				<th width="20%">Quantity</th>
		        				<th>Subtotal</th>
		        			</thead>
		        			<tbody id="tbody">
		        			</tbody>
		        		</table>
	        			</div>
	        		</div>
	        		<div class="row">		              
		              <div class="col-lg-8">
		                Debit / Credit Card  <img src="images/mastercard_logo.jpg">
		                <br><br>
		                <div class="alert alert-danger" id="valid_card" role="alert">
		                  Please enter valid credit card number
		                </div>
		                <div class="alert alert-danger" id="expire_date" role="alert">
		                  Please select Expiration date of card
		                </div>
		                <div class="alert alert-danger" id="old_expiry" role="alert">
		                  The expiry date is before today's date. Please select a valid expiry date
		                </div>
		                <div class="alert alert-danger" id="security_card" role="alert">
		                  Please enter valid Security Code
		                </div>
		                <form class="paymentform" id="checkout" method="post" action="sales.php">
		                  <fieldset>
		                    <div class="control-group">
		                      <label class="control-label" for="email">Card Number</label>
		                      <div class="controls">
		                        <input type="text" id="card_number" name="card_number" placeholder="" class="input-xlarge">
		                        <div class=""></div>
		                      </div>
		                    </div>
		                    <div class="control-group">
		                      <label class="control-label" for="password">Expiration Date</label>
		                      <div class="controls">
		                        <select class="span3" name="expiry_month" id="expiry_month">
		                          <option value="">Month</option>
		                          <option value="01">Jan</option>
		                          <option value="02">Feb</option>
		                          <option value="03">Mar</option>
		                          <option value="04">Apr</option>
		                          <option value="05">May</option>
		                          <option value="06">June</option>
		                          <option value="07">July</option>
		                          <option value="08">Aug</option>
		                          <option value="09">Sep</option>
		                          <option value="10">Oct</option>
		                          <option value="11">Nov</option>
		                          <option value="12">Dec</option>
		                        </select>
		                        <select class="span2" name="expiry_year" id="expiry_year">
		                          <option value="">Year</option>
		                          <option value="2020">2020</option>
		                          <option value="2021">2021</option>
		                          <option value="2022">2022</option>
		                          <option value="2023">2023</option>
		                          <option value="2024">2024</option>
		                          <option value="2025">2025</option>
		                          <option value="2026">2026</option>
		                          <option value="2027">2027</option>
		                          <option value="2028">2028</option>
		                          <option value="2029">2029</option>
		                          <option value="2030">2030</option>
		                          <option value="2031">2031</option>
		                          <option value="2032">2032</option>
		                          <option value="2033">2033</option>
		                          <option value="2034">2034</option>
		                          <option value="2035">2035</option>
		                          <option value="2036">2036</option>
		                          <option value="2037">2037</option>
		                          <option value="2038">2038</option>
		                          <option value="2039">2039</option>
		                          <option value="2040">2040</option>
		                        </select>
		                      </div>
		                    </div>
		                    <div class="control-group">
		                      <label class="control-label"  for="password_confirm">Security Code</label>
		                      <div class="controls">
		                        <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="span2">
		                        <br>(3-4 digit code normally on the back of your card)
		                      </div>
		                    </div>
		                    <div class="control-group">
		                      <div class="controls">
		                        <button type="button" class="btn btn-success" id="paynow" onclick="cardnumber()">Place Order</button>
		                      </div>
		                    </div>
		                  </fieldset>
		                </form>
		              </div>
		              <div class="col-lg-2"></div>
		          </div>
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  	<?php $pdo->close(); ?>
  	<?php include 'includes/footer.php'; ?>
</div>
<style>
	.alert-danger{
	  display: none;
	}
	.paymentform {
    background: #E7E7E7;
    padding: 20px;
    margin-top: 30px;
}
.paymentform .control-group {
    float: left;
    width: 100%;
    margin-bottom: 15px;
}
.paymentform label {
    float: left;
    width: 30%;
}
</style>
<?php include 'includes/scripts.php'; ?>
<script>
var total = 0;
$(function(){
	getDetails();
	getTotal();
});

function getDetails(){
	$.ajax({
		type: 'POST',
		url: 'cart_details.php',
		data: { 'type': 'checkout' },
		dataType: 'json',
		success: function(response){
			$('#tbody').html(response);
			getCart();
		}
	});
}

function getTotal(){
	$.ajax({
		type: 'POST',
		url: 'cart_total.php',
		dataType: 'json',
		success:function(response){
			total = response;
		}
	});
}
function cardnumber(inputtxt)
{
    document.getElementById('valid_card').style.display = "none";
    document.getElementById('expire_date').style.display = "none";
    document.getElementById('old_expiry').style.display = "none";
    document.getElementById('security_card').style.display = "none";
    var cardno = /^(?:5[1-5][0-9]{14})$/;
    var cardnumber = document.getElementById("card_number");
    if(cardnumber.value.match(cardno))
    {
      var exMonth=document.getElementById("expiry_month");
      var exYear=document.getElementById("expiry_year");
      if(exMonth.value == '' || exYear.value == ''){          
          document.getElementById('expire_date').style.display = "block";
          return false;
      }else{
        const expiryDate = new Date(exYear.value + '-' + exMonth.value + '-01');
        if (expiryDate < new Date()) {
          document.getElementById('old_expiry').style.display = "block";
          return false;
        }else{
            var cvv = document.getElementById('password_confirm').value;
            if (cvv.length < 3 || cvv.length > 4){              
              document.getElementById('security_card').style.display = "block";
              return false;
            }else{
              document.getElementById('checkout').submit();
            }
        }
      }
    }else{    
      document.getElementById('valid_card').style.display = "block"; 
      return false;
    }
}
</script>
</body>
</html>