<?php  
session_start();
include_once('ketnoi.php');
if(isset($_SESSION['tk']) && isset($_SESSION['mk'])){
	header('location:quantri.php');
}
else{
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hệ thống quản trị</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/dangnhap.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>
<?php  
if(isset($_POST['submit'])){

	// Bẫy lỗi để trống tài khoản
	if($_POST['tk'] == ''){
		$error = 'Vui lòng nhập đầy đủ tài khoản và mật khẩu!';
	}
	else{
		$tk = $_POST['tk'];
	}
	// Bẫy lỗi để trống mật khẩu
	if($_POST['mk'] == ''){
		$error = 'Vui lòng nhập đầy đủ tài khoản và mật khẩu!';
	}
	else{
		$mk = $_POST['mk'];
	}


	// Nhập đúng dữ liệu cho phép đăng nhập
	if(isset($tk) && isset($mk)){
		$sql = "SELECT * FROM thanhvien WHERE tai_khoan = '$tk' AND mat_khau = '$mk' AND quyen_truy_cap = 2";
		$query = mysql_query($sql);
		$rows = mysql_num_rows($query);
		if($rows <= 0){
			$error = "<span style='color:red;'>Tài khoản hoặc mật khẩu không hợp lệ!</span>";
		}
		else{
			$_SESSION['tk'] = $tk;
			$_SESSION['mk'] = $mk;
			header('location:quantri.php');
		}
	}
}
?>
	<div class="container">
		<div class="row">
			<div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-4  col-md-offset-4">
				<h3 class="text-center login-title"><?php if(isset($error)){echo $error;} else{echo 'Hệ thống đăng nhập';}?></h3>
				<div class="form-login">
					<img src="img/logo.png" alt="">
					<form class="form-signin" method="post" enctype="mutipart/form-data">
	                    <input type="text" class="form-control" placeholder="Tài khoản" name="tk" required autofocus>
	                    <input type="password" class="form-control" placeholder="Mật khẩu" name="mk" required>
	                    <label class="checkbox pull-right">
	                    <input type="checkbox" name="check" checked="checked">Ghi nhớ	
	                    </label><br>
	                    <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Đăng nhập</button>
	                    <button class="btn btn-lg btn-danger btn-block" type="reset" name="reset">Làm mới</button>
	                </form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<?php
}
?>