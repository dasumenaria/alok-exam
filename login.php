<?php 
	ini_set('max_execution_time', 10000);
	$dbHost='localhost';
	$dbUser='root';
	$dbPass='';
	$dbName='exam_session';
	$s=mysql_connect($dbHost,$dbUser,$dbPass) or die('Error connecting to MySQL server: ' . mysql_error());
	mysql_select_db($dbName,$s);
	$sel_session=mysql_query("select `session` from `user_session`");
	$arr_session=mysql_fetch_array($sel_session);
	@session_start();
	$_SESSION['session']=$arr_session['session'];
	
  	$dbName=$arr_session['session'];
	mysql_select_db($dbName,$s);
 
	if(isset($_POST['loginSubmit'])){
		$username=$_POST['username'];
		$password=$_POST['password'];
		$pass_check=md5($password);
		$set2=mysql_query("select * from `login` where `username`='$username' && `password`='$pass_check'");
		$count=mysql_num_rows($set2);
		if($count>0)
		{ 		
			$fet2=mysql_fetch_array($set2);
			$id=$fet2['id'];	
			$name=$fet2['name'];
			$role=$fet2['role'];
			  
			@session_start();	
				$_SESSION['id']=$id;
				$_SESSION['name']=$name;
				$_SESSION['username']=$name;
				$_SESSION['role']=$role; 
			session_write_close();
			if($role==2)
			{
				ob_start();
					echo "<meta http-equiv='refresh' content='0;url=authorised.php'>";
				ob_flush();
			}
			else
			{
				ob_start();
					echo "<meta http-equiv='refresh' content='0;url=index.php'>";
				ob_flush();
			}
			 $flag=0;
		}  
		else
		{
			  $flag=1;
		}	 
	   
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>Login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/pages/css/login.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<body class="login">
<div class="menu-toggler sidebar-toggler"> </div>
<div class="logo"> &nbsp; </div>
<div class="content"> 
  <form method="post">
    <h3 class="form-title">Sign In</h3>
    <?php if(@$flag=='1'){ ?>
    <div class="alert alert-danger">
      <button class="close" data-close="alert"></button>
      <span> Enter Correct Username and Password. </span> </div>
    <?php } ?>
    <div class="form-group"> 
      <label class="control-label visible-ie8 visible-ie9">Username</label>
      <input class="form-control form-control-solid placeholder-no-fix" type="text" autofocus autocomplete="off" placeholder="Username" name="username"/>
    </div>
    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">Password</label>
      <input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password"/>
    </div>
    <div class="form-actions" style="text-align:center">
      <button type="submit" name="loginSubmit" class="btn btn-success uppercase">Login</button>
    </div>
    <div class="create-account">
      <p> <a href="http://phppoets.com" style="text-decoration:none !important" target="_blank" class="uppercase"><?php echo date('Y');?> PHPPoets IT Solutions PVT. LTD.</a> </p>
    </div>
  </form>
</div>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script> 
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script> 
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script> 
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script> 
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script> 
<script src="assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script> 
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script> 
<script src="assets/admin/layout/scripts/layout.js" type="text/javascript"></script> 
<script src="assets/admin/layout/scripts/demo.js" type="text/javascript"></script> 
<script src="assets/admin/pages/scripts/login.js" type="text/javascript"></script> 
<script>
jQuery(document).ready(function() {    
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	Login.init();
	Demo.init();
});
</script> 
</body>
</html>