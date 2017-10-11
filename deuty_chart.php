<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master </title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title hide_print">
				<div class="caption">
					<i class="icon-puzzle"></i> Duty Charts
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
            	<div align="right" style="margin:10px" class="hide_print"><button type="button" onClick="print()" class="btn btn-primary"><i class="fa fa-print"></i> Print</button>
                </div>
                <table class="table table-bordered table-hover">
                    <tr>+
                        <th align="center" height="50"  >Exam Name</th><th> ..........................</th>
                        <th align="center" >Subject </th><th>.............................</th>
                        <th align="center"  >Date</th><th> ....... / ....... / <?php echo date('Y');?> </th>
                    </tr>
                </table>
                <div style="width:90%; margin-left:5%">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <th width="10%">S. No.</th>
                            <th  width="50%">Teacher Name </th>
                            <th  width="25%">Room No. </th>
                            <th  width="25%"> Signature </th>
                        </tr>
                        <?php
                        $sel_feculty_name=mysql_query("SELECT * FROM  `login` where `role` = 1 ") ;
                        while($ftc_feculty_name=mysql_fetch_array($sel_feculty_name))
                        {
                        $techer_name=$ftc_feculty_name['name'];
                        $j++;
                        ?>
                            <tr>
                                <td> <?php echo $j  ; ?></td>
                                <td align="left" style="padding:5px"> <?php echo $techer_name ; ?></td>
                                <td style="text-align:center;padding:3px"> <input name="tech_<?php echo $j;?>"
                                value="" class="form-control input-small" type="text" /></td>
                                <td style="">&nbsp; </td>
                            </tr>
                        <?php
                        }
                    ?>
                    </table>
                </div> 
			</div>
		</div>
	</div>
</div>
</body>
<?php footer();?>
<?php scripts();?>
		 
  
</html>