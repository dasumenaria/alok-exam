<?php
//error_reporting(0);
//@ini_set('display_errors', 0);
session_start();

ini_set('max_execution_time', 10000);
$dbHost='localhost';
$dbUser='root';
$dbPass='';
$dbName="exam_session"; 
$s=mysql_connect($dbHost,$dbUser,$dbPass) or die('Error connecting to MySQL server: ' . mysql_error());
mysql_select_db($dbName,$s);

if(isset($_POST['bttn_next']))
{
	$_SESSION['session']=$_POST['session'];
	echo "<script>location='index.php'</script>";
}
?>

<!DOCTYPE html>

 <html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<!--link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/-->
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="assets/admin/pages/css/login.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN LOGO -->
<div class="logo">
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
    <form  class="login-form"  method="post" >
        <div align="center">
        </div>
        <h2 align="center" style="color: #555;">Session</h2>
        <br/><br/>

        <div  style="padding-bottom:50px">
            <div class="form-group">
               
                <select class="form-control"  name="session" required="required"  style="background-color:#FFF !important">
                    <option value=""> Select... </option>    
                    <?php
                        $set=mysql_query("Select * from `session` Order by `id` DESC");
                        while($fet=mysql_fetch_array($set))
                        {
                            $schl_id=$fet['id'];
                            $session=$fet['session'];
                            echo "<option selected value'".$session."'>".$session."</option>";
                        }
                    ?>
                </select>
            </div><br>
    
            <div width="100%" align="right">
                <button type="submit" name="bttn_next"  class="btn btn-info pull-center"> GO <i class="fa fa-sign-in"></i></button>
            </div>
  		</div>

	</form>
	<div class="create-account">
			<p>
				<a href="http://phppoets.com" target="_blank" class="uppercase"><?php echo date('Y');?> PHPPoets IT Solutions PVT. LTD.</a>
			</p>
		</div>
	
</div>

</body>

<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/login.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {     
	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	Login.init();
	Demo.init();
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>