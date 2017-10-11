<?php
 
 
 function cleanData(&$str)
  {
    $str = preg_replace("/\t/", "\\t", $str);
    $str = preg_replace("/\r?\n/", "\\n", $str);
    if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"';
  }
 
  // file name for download
  $filename = "student_register.xls";
  header("Content-Disposition: attachment; filename=\"$filename\"");
  header("Content-Type: application/vnd.ms-excel");
  $flag = false;
        ini_set('max_execution_time', 10000);
 



$data="<table border='1' width='100%'>
                <tr>
                        <th><label><strong>S.No.</strong></label></th>
                        <th><label><strong>Full Name</strong></label></th>
						<th><label><strong>Father's Name</strong></label></th>
						<th><label><strong>Mother's Name</strong></label></th>
						<th><label><strong>D-O-B</strong></label></th>
						<th><label><strong>Scholar no.</strong></label></th>
                        <th><label><strong>Roll no.</strong></label></th>
						<th><label><strong>Class</strong></label></th>
						<th><label><strong>Section</strong></label></th>
						<th><label><strong>Address</strong></label></th></tr>";
						 
				 
				$data.="<tr><th align='center'>1</th>
							<th>Ankit Sisodiya</th>
							<th align='center'>Mr. G.S Sisodiya</th>
							<th align='center'>Asha Sisodiya</th>
							<th align='center'>16-06-1991</th>
							<th align='center'>1207</th>
							<th align='center'>9</th>
							<th align='center'>III</th>
							<th align='center'>B</th>
							<th align='center'>SHRIKUL, 91 Patho KI Magri, Near Sewashram Circle Udaipur Rajasthan Pin=313001</th>
							</tr>";
				
				 
						for($k=2;$k<=5;$k++)
						{			
										 							
					$data.="<tr><th align='center'></th>
							<th></th>
							<th align='center'></th>
							<th align='center'></th>
							<th align='center'></th>
							<th align='center'></th>
							<th align='center'></th>
							<th align='center'></th>
							<th align='center'></th>
							<th align='center'></th>
							</tr>";
							 
						}
											 
										
 
  $data.="</table>";
  echo $data;
  