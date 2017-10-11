<?php
@session_start();
$id=$_SESSION['id']; 
if(empty($id))
{
	header("location:login.php");
}
 function css() { ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
 
<!--<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>-->
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<link href="assets/global/plugins/icheck/skins/all.css" rel="stylesheet"/>


<link rel="stylesheet" type="text/css" href="assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>

<!-- END GLOBAL MANDATORY STYLES -->
<link rel="stylesheet" type="text/css" href="assets/global/plugins/clockface/css/clockface.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-colorpicker/css/colorpicker.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"/>
<link rel="stylesheet" type="text/css" href="assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>

<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/assets/global/plugins/jquery-notific8/jquery.notific8.min.css"/>
<style>
.self-table > tbody > tr > td, .self-table > tr > td
{
	border-top:none !important;
}
.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
 
    vertical-align:middle !important;
}
option 
{
    border-top:1px solid #CACACA;
    padding:4px;
	cursor:pointer;
}
select 
{
	cursor:pointer;
}
.myshortlogo
{
	font: 15px "Open Sans",sans-serif;
	text-transform: uppercase !important;
	box-sizing:border-box;
}
</style>
<style media="print">
	.txt_padd
	{
		padding-left:2px;
		padding-right:2px;
		text-align:center;
		margin-top:-8%
	}
	.hide_print
	{
		display:none;
	}
</style>
<?php } ?>
<body class="page-header-fixed page-quick-sidebar-over-content page-style-square"> 
<?php 
function contant_start()
{
 ?>
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO page-logo -->
		<div class="page-logo" >
			<!--a href="index.php" style="text-decoration:none;" >
				<img src="img/mds_logo.png" alt="logo" height="45px" width="400px" style="padding-top:1px ! important">
			</a-->
			<div class="menu-toggler sidebar-toggler hide">
				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN NOTIFICATION DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				
				<!-- END TODO DROPDOWN -->
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				<li class="dropdown dropdown-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<!--img alt="" class="img-circle" src="assets/admin/layout/img/avatar3_small.jpg"/-->
					<span class="username username-hide-on-mobile">
					<?php 
					@session_start();
					echo $name=$_SESSION['name'];
						$fac_id=$_SESSION['id'];
					?>
					 </span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-menu-default">
						<li>
							<a href="staff_search.php?user=<?php echo $fac_id; ?>">
							<i class="icon-user"></i> My Profile </a>
						</li>
						 
						<li>
							<a href="logout.php">
							<i class="icon-key"></i> Log Out </a>
						</li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
		</div>
		<!-- END TOP NAVIGATION MENU -->
	<?php
 $role_id=$_SESSION['role'];
	
	if($role_id==2){
	?>	
		
		<div class="top-menu">
			<ul class="nav navbar-nav" style="padding-right:20px !important;">
				<!-- BEGIN NOTIFICATION DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				
				<!-- END TODO DROPDOWN -->
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<!--<li class="dropdown dropdown-user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<!--img alt="" class="img-circle" src="assets/admin/layout/img/avatar3_small.jpg"/-->
						<!--<span class="username username-hide-on-mobile">
					<?php 
							echo "SESSION";
					?>
					 </span>
					<i class="fa fa-angle-down"></i>
					</a>
					<?php
 					if(isset($_POST['sess_sub1'])){
	 
						$sess_val1=$_POST['sess_val1'];
						$newURL=$_POST['url1'];
 						$_SESSION['sess']='wwwsmtma_'.$sess_val1;
							 ?>
							<script>
								 location.replace("<?php echo $newURL; ?>");
							 </script>
							
							<?php						
 					}
					
					if(isset($_POST['sess_sub2'])){
	 					
						$sess_val2=$_POST['sess_val2'];
						$newURL=$_POST['url2'];
						$_SESSION['sess']='wwwsmtma_'.$sess_val2;
						?>
						<script>
							 location.replace("<?php echo $newURL; ?>");
						 </script>
						
						<?php
 					}
					
					?>
					-->
					<ul class="dropdown-menu dropdown-menu-default">
					<form method="post">
					<?php 
					$told=mysql_query("select * from `exam_session`.`session` order by `id`");
					while($gots=mysql_fetch_array($told))
					{
						$k++;
						 
						$session=$gots['session'];
						 
					?>
						<li>
							 <a><i class="icon-user"></i><?php echo $session; ?>&nbsp;
							 <input type="hidden" value="<?php echo $session; ?>" name="url<?php echo $k; ?>">
							 <input type="hidden" value="<?php echo $session; ?>" name="sess_val<?php echo $k; ?>">
							 <button type="submit" class="btn yellow btn-xs" name="sess_sub<?php echo $k; ?>"> Go</button></a>
						</li>
						 
					<?php } ?>	 
					</form>
					</ul>
					
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
		</div>
		



	<?php } ?>	

<?php

		/*	$school_id=$_SESSION['school_id'];
		if($school_id==1){
 			$sh="SECTOR BRANCH";
 		}
		else if($school_id==2){
			$sh="PRATAP NAGAR";
		}*/
		?>
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right" style="padding-right:50%; !important;">
				<!-- BEGIN NOTIFICATION DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				
				<!-- END TODO DROPDOWN -->
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				<li class="dropdown dropdown-user" style="width:200px !important;">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<!--img alt="" class="img-circle" src="assets/admin/layout/img/avatar3_small.jpg"/-->
					<span class="username username-hide-on-mobile" >
					<?php 
					 //echo $sh;
					?>
					
					 </span>
					 
					</a>
					 
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
		</div>
		

	</div>
	<!-- END HEADER INNER -->
</div>

<div class="page-container">

<?php } ?>
<!-- END HEADER -->

<!-- BEGIN CONTAINER -->

	<!-- BEGIN SIDEBAR -->
	<?php 
function menu() {
?>
	<div class="page-sidebar-wrapper">
		<div class="page-sidebar navbar-collapse collapse">
			
			<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
				<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
				<li class="sidebar-toggler-wrapper">
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					
					<!-- END SIDEBAR TOGGLER BUTTON -->
				</li>
				
				<!--li class="start active open">
					<a href="index.php">
					<i class="icon-home"></i>
					<span class="title">Dashboard</span>
					</a>
				</li>
				
				 <li>
					<a href="javascript:;">
					<i class="icon-logout"></i>
					<span class="title">Master</span>
					<span class="arrow "></span>
					</a>
				<ul class="sub-menu">
						 
						<li>
							<a href="section.php">
							Section Entry</a>
						</li>
						
						<li>
							<a href="cls_sec.php">
							Class-Section </a>
						</li>
						<li>
							<a href="cls_sub.php">
							Class-Subject </a>
						</li>
						
						 
						<li>
							<a href="max_marks.php">
							Max Marks</a>
						</li>
						
						<li>
							<a href="elective.php">
							Elective</a>
						</li>

				</ul>
				
					<li>
							<a href="student_reg.php">
							Student Register</a>
					</li>

						<li>
							<a href="marks.php">
							Marks Format</a>
						</li>
						
						<li>
							<a href="upload_marks.php">
							Upload Marks</a>
						</li>
						
						<li>
							<a href="marksheet.php">
							Marksheet View</a>
						</li>

						<li>
							<a href="number_view.php">
							Marks Edit</a>
						</li>
						 
						 <li>
							<a href="term_block.php">
							Activate Exam</a>
						</li>
						
						
						
						 
						 
				</li>
				 <li>
					<a href="javascript:;">
					<i class="icon-logout"></i>
					<span class="title">Staff</span>
					<span class="arrow "></span>
					</a>
				<ul class="sub-menu">
				 
						<li>
							<a href="register.php">
							Add </a>
						</li>
							 
						<li>
							<a href="staff_view.php">
							view</a>
						</li>
					
				</ul>
				</li>
				         <li>
							<a href="password.php">
							Change Password</a>
						</li-->
						
						
						
						<?php  
						$page_name_from_url=basename($_SERVER['PHP_SELF']);
			 
			 
							 $fac_id=$_SESSION['id'];
							 $role_id=$_SESSION['role'];
							
 
			 $selecto7=mysql_query("select * from `user_settings` where `role_id`='$role_id'");
			        while($reco7=mysql_fetch_array($selecto7))
			       {
					   $mng_mdul_id[]=$reco7['module_id'];
				   }
				   
				      $sel_module2=mysql_query("select `main_menu` from `modules` where `page_name_url`='".$page_name_from_url."'");
				$arr_module2=mysql_fetch_array($sel_module2);
				 $main_menu_active=$arr_module2['main_menu'];			
				
					$selecto3=mysql_query("select * FROM `modules` ORDER BY `seq` ASC");
                      while($data=mysql_fetch_array($selecto3))
					  {
                      $main_menu_arr[]='';
                     if(in_array($data['id'],$mng_mdul_id))
					 {
                        if(empty($data['main_menu']) && empty($data['sub_menu']))
                        {
							
                            ?>
                            <li class="<?php if($page_name_from_url==$data['page_name_url']){ echo 'active'; } ?>">
  <a href="<?php echo $data['page_name_url']; ?>"><i class="<?php echo $data['icon_class_name']; ?>"></i><?php echo $data['name']; if($page_name_from_url==$data['page_name_url']){ echo '<span class="selected"></span>'; } ?></a>
                            </li>
                            <?php
                        }
                      
                        if(!empty($data['main_menu']) && empty($data['sub_menu']))
                        {
                            if(in_array($data['main_menu'], $main_menu_arr))
                            {
                               
                            }
                            else
                            {
                                $main_menu_arr[]=$data['main_menu'];
                                  ?>
                                <li class="<?php if($main_menu_active==$data['main_menu']){ echo 'active'; } ?>">
                                    <a href="javascript:;">
                                    <i class="<?php echo $data['main_menu_icon']; ?>"></i>
                                    <?php echo $data['main_menu']; ?> <span class="arrow"></span>					
					                <span class="selected"></span>
                                    </a>
                                    <ul  class="sub-menu">
                                    <?php
		$selecto4=mysql_query("select * FROM `modules` where `main_menu`='".$data['main_menu']."' ORDER BY `seq` ASC");
									while($data_value=mysql_fetch_array($selecto4))
									{
										if(in_array($data_value['id'],$mng_mdul_id))
										{			
                                    
                                         ?>
                                                <li class="<?php if($page_name_from_url==$data_value['page_name_url']){ echo 'active'; } ?>">
                                                    <a href="<?php echo $data_value['page_name_url']; ?>"><?php echo $data_value['name']; ?></a>
                                                </li>
                                                <?php
										}
                                    }
                                    ?>
									
                                    </ul>
                                </li>
                                <?php
                            }
                        }
					 }
					  }
					  
					  ?>					  
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		
	</div>

	<?php } ?>

<?php 
function footer()
{?>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 <a href="http://phppoets.com" target="blank" style="text-decoration:none">2015 PHPPoets IT Solutions PVT. LTD.</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
</div>
<?php } ?>
</body><?php 

function scripts()
{?>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/icheck/icheck.min.js"></script>
<!-- END CORE PLUGINS -->
<script type="text/javascript" src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/clockface/js/clockface.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="assets/global/plugins/jquery-notific8/jquery.notific8.min.js"></script>
<script src="assets/admin/pages/scripts/ui-notific8.js"></script>


<script type="text/javascript" src="assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>

<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/form-icheck.js"></script>

<script src="assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script> 
<script src="assets/admin/pages/scripts/table-managed.js"></script>
<script src="assets/admin/pages/scripts/components-pickers.js"></script>
<script type="text/javascript" src="assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
<script src="assets/admin/pages/scripts/form-validation.js"></script>
<script src="assets/admin/pages/scripts/ui-general.js" type="text/javascript"></script>

<script>
jQuery(document).ready(function() {   
 	Metronic.init(); // init metronic core components
	Layout.init(); // init current layout
	QuickSidebar.init(); // init quick sidebar
	Demo.init(); // init demo features
	UINotific8.init();
	FormValidation.init();
	TableManaged.init();
	ComponentsPickers.init();
	UIGeneral.init();
	FormiCheck.init(); // init page demo
	ComponentsDropdowns.init();
	
});
</script>

<script type="text/javascript">
setInterval(function(){ abc(); }, 3000);
function abc()
{	$('#msg_div').fadeOut(500);
	var delay = 500;
	setTimeout(function() {
	$('#msg_div').remove();
	}, delay);
}
</script>
<?php } ?>