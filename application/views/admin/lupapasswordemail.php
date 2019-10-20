<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>LUPA PASSWORD</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo base_url('').'assets/'?>bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url('').'assets/'?>bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url('').'assets/'?>bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url('').'assets/'?>dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url('').'assets/'?>plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>ALFALFA ADMIN</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Forget Password</p>


      <div class="form-group has-feedback">
        <input required readonly id="email" type="email" name="EMAIL" class="form-control" placeholder="Email" value="<?php echo $member->email?>">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback" id="pass">
        <input required id="password" type="password" class="form-control" placeholder="Password" >
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback" id="valpass">
        <input required id="validatepassword" type="password" class="form-control"  placeholder="Retype password">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
        <!-- /.col -->
        <div id="btnreset">
          <button style="margin-bottom:10px;" onclick="ResetPassword()" class="btn btn-primary btn-block btn-flat">Reset Password</button>
        </div>
        <!-- /.col -->
      </div>


    <!-- <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
        Google+</a>
    </div> -->
    <!-- /.social-auth-links -->

   
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<?php echo base_url('').'assets/'?>bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url('').'assets/'?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?php echo base_url('').'assets/'?>plugins/iCheck/icheck.min.js"></script>
<script>

  function ResetPassword()
  {
    var nama = $('#nama').val();
   var validatepassword = $('#validatepassword').val();
   var email = $('#email').val();
   var password = $('#password').val();
   var regex = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
   var regexpass = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[_#$^+=!*()@%&]).{8,}$/;
   if (!regex.test(email))
    {
       alert('Format email salah');
    }
    else if (password != validatepassword)
    {
      alert('Password Tidak Sesuai');
    }
    else if (!regexpass.test(password))
    {
      alert('Format Password Salah\nPassword minimum 8 karakter terdiri minimal 1 huruf besar, 1 huruf kecil, 1 simbol, 1 angka!');
    }
    else
    {
      $.ajax({
        url  :"<?php echo base_url('operator/resetpasswordadmin');?>",
        type : 'POST',
        data : {
          email : email,
          password : password
        },
         success : function(data)
        { console.log(data);
          if (data==1)
          {
             alert('Password Berhasil diganti');
             window.location="<?php echo base_url().'loginadmin'?>"
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

