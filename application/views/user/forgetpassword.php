<!DOCTYPE html>
<html lang="en">
<head>
	<title>FORGET PASSWORD</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<?= base_url('assets/loginshop/')?>images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>css/util.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/loginshop/')?>css/main.css">
<!--===============================================================================================-->
<!--===============================================================================================-->
<script src="<?= base_url('assets/loginshop/')?>vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url('assets/loginshop/')?>vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url('assets/loginshop/')?>vendor/bootstrap/js/popper.js"></script>
	<script src="<?= base_url('assets/loginshop/')?>vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="<?= base_url('assets/loginshop/')?>vendor/select2/select2.min.js"></script>
    <script src="<?php echo base_url('assets/')?>js/bootstrap-notify.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url('assets/loginshop/')?>vendor/daterangepicker/moment.min.js"></script>
	<script src="<?= base_url('assets/loginshop/')?>vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<?= base_url('assets/loginshop/')?>vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
    <script src="<?= base_url('assets/loginshop/')?>js/main.js"></script>
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div  class="login100-form validate-form">
					<span class="login100-form-title p-b-43">
						Forget Password
					</span>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input id="email" class="input100 has-val" type="text" name="email" readonly value="<?= $record->Email ?>">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					
					
					<div class="wrap-input100 validate-input">
						<input  id="pertanyaan" class="input100 has-val" type="text" name="pertanyaan" readonly value="<?= $record->Question ?>">
						<span class="focus-input100"></span>
						<span class="label-input100">Pertanyaan</span>
					</div>

					<div class="wrap-input100 validate-input">
						<input  id="jawaban" class="input100 has-val" type="text" name="jawaban">
						<span class="focus-input100"></span>
						<span class="label-input100">jawaban</span>
					</div>

					<div hidden id="pass" class="wrap-input100 validate-input" data-validate="Password is required">
						<input id="password" class="input100 has-val" type="password" name="pass">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>
			

					<div id="btncek" class="container-login100-form-btn">
						<button onclick="cekjawaban()" class="login100-form-btn">
							Cek Jawaban
						</button>
					</div>

					<div id="btnreset" hidden class="container-login100-form-btn">
						<button onclick="resetpassword()" class="login100-form-btn">
							Reset Password
						</button>
					</div>
				
				</div>

				<div class="login100-more" style="background-image: url('<?= base_url('assets/loginshop/')?>images/bg-01.jpg');">
				</div>
			</div>
		

		</div>
	</div>
	
	

	
	

    
<script>
<?php if (!empty($this->session->flashdata('Status'))){?>
	setnotifstatus('<?php echo $this->session->flashdata('Status')?>');
<?php }?>


function setnotifstatus(err)
{ 
if (err == 'Input Succes')
	{
	ttp='success';
	}
else if(err== "Email & Password Tidak Cocok" || err=="Akun telah digunakan untuk Login" || err=="'Akun terblokir. SIlahkan klik lupa password")
	{
	ttp='danger';
	}

$.notify({
	// options
	message: err,
},{
	// settings
	element: 'body',
	position: null,
	type: ttp,
	allow_dismiss: true,
	newest_on_top: false,
	showProgressbar: false,
	placement: {
	from: "bottom",
	align: "right"
	},
	offset: 20,
	spacing: 10,
	z_index: 1031,
	delay: 5000,
	timer: 1000,
	url_target: '_blank',
	mouse_over: null,
	animate: {
	enter: 'animated fadeInRight',
	exit: 'animated fadeOutRight'
	},
	onShow: null,
	onShown: null,
	onClose: null,
	onClosed: null,
	icon_type: 'class',
	template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert">' +
	'<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
	'<span data-notify="icon"></span> ' +
	'<span data-notify="title">{1}</span> ' +
	'<span data-notify="message">{2}</span>' +
	'<div class="progress" data-notify="progressbar">' +
		'<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
	'</div>' +
	'<a href="{3}" target="{4}" data-notify="url"></a>' +
	'</div>' 
});

}

	function cekjawaban()
	{
	var email      = $('#email').val();
	var pertanyaan = $('#pertanyaan').val();
	var jawaban    = $('#jawaban').val();
	$.ajax({
		url  :"<?php echo base_url('user/Login/cekJawaban');?>",
		type : 'POST',
		data : {
			email     : email,
			pertanyaan: pertanyaan,
			jawaban   : jawaban
		},
			success : function(data)
			{ console.log(data);
				if (data == "true")
				{
				$('#pass').removeAttr('hidden');
				$('#btncek').attr('hidden','true');
				$('#btnreset').removeAttr('hidden');
				}
				else
				{
				alert('Jawaban salah!');
				}
			}
		})
	}   

	function resetpassword()
	{
		var email    = $('#email').val();
		var password = $('#password').val(); 
		if(password == "")
		{
			alert('Password Tidak Boleh Kosong');
		}
		else
		{
			$.ajax({
				url  :"<?php echo base_url('user/Login/resetpassword');?>",
				type : 'POST',
				data : {
					email   : email,
					password: password,
				},
					success : function(data)
					{ 
						if(data == "true")
						{
							
							window.location = "<?php echo base_url('user/Login/loginuser')?>";
							alert("Password Berhasil Diganti");
						}
						else
						{
							alert('Error');
						}
					}
				})
		}
	}   
</script>

</body>
</html>