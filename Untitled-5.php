<?php
		global $link;
		include_once("common/global.inc.php");
		if ($this->get_request_method() != "POST") {
            $this->response('', 406);
        }
		@$session_id = $this->_request['session_id'];
		@$master_item_id = $this->_request['master_item_id'];
		@$quantity_null = $this->_request['quantity'];
		@$selling_rate_null = $this->_request['selling_rate'];
		@$offer_id = $this->_request['offer_id'];
		@$op = $this->_request['op'];
		@$id=$this->_request['id'];
		@$add_to_cart_id=$this->_request['add_to_cart_id'];
		
		@$item_count = 1;
	    $time=date('h:i:s a', time());
		$date=date("d-m-Y");
		$curent_date = date("Y-m-d", strtotime($date));
	    //$curent_date=strtotime($date);

$pc='';
$sql_update_promo = $this->db->prepare("UPDATE `add_to_carts` SET promo_code='".$pc."' WHERE session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0 LIMIT 1;");
$sql_update_promo->execute();

		if($session_id>0 && $op=='')
		{
			
		$qryaddress = "SELECT * FROM customer_addresses where session_id='".$session_id."' AND default_address=1 AND flag=0";
					$qry = $this->db->prepare($qryaddress);
					$qry->execute();
					if($qry->rowCount()==1)
					{
					$address_available=true;
					}
					else{
					$address_available=false;
					}
					
            
			$qry = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry);
            $sql->execute();
			$sql_a = $sql->fetch(PDO::FETCH_ASSOC);
			$add_id=$sql_a['id'];
			
			$qry1 = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$add_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qry1);
            $sql->execute();
			$row_gp = $sql->fetchALL(PDO::FETCH_ASSOC);
			
            if($sql->rowCount() != 0) { 

				foreach($row_gp as $qry_add_subss) {
					
					
							$item_selling_rate = $qry_add_subss['selling_rate'];
							$item_quantity = $qry_add_subss['quantity'];
							$master_item_id = $qry_add_subss['master_item_id'];
							$item_count = $qry_add_subss['item_count'];
							
							
							$qryp = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0 AND status_flag=0";			
			                $sql = $this->db->prepare($qryp);
                            $sql->execute();
							$fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_item_name=$fetch_item_id['master_category_item_id'];
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_grad_units=$fetch_item_id['master_sub_grading_unit_id'];
							$exact_quantity=$fetch_item_id['quantity'];
							$exact_combo_offer_flag=$fetch_item_id['combo_offer_flag'];
							$exact_combo_name=$fetch_item_id['combo_name'];
                                                        $available_stock=$fetch_item_id['available_stock'];

				if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==1 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==1){
				$out_of_stock=true;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==4 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==4){
				$out_of_stock=true;
				}



$exact_selling_rate11=$fetch_item_id['selling_rate'];
$before_discounted_price=$fetch_item_id['before_discounted_price'];
							$exact_item_image=$fetch_item_id['item_image'];
							
							$exact_selling_rate=$item_count*$exact_selling_rate11;
							
							$fetchimage= $site_url. "catimage/" .$exact_item_image;
							
							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
			                $sql = $this->db->prepare($qry_gr);
                            $sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];
							
							$qrySubgrad = "SELECT * FROM master_sub_grading_units where id='".$exact_grad_units."' AND flag=0";
					$qrySubgrad = $this->db->prepare($qrySubgrad);
					$qrySubgrad->execute();
					$qrySubgrad1 = $qrySubgrad->fetch(PDO::FETCH_ASSOC);
						    $ex_unit = $qrySubgrad1['unit'];

							
							$qry_ex = "SELECT * FROM master_category_items where id='".$exact_item_name."' AND flag=0";			
			                $sql = $this->db->prepare($qry_ex);
                            $sql->execute();
							$fetch_item_id1 = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_category_name=$fetch_item_id1['category_name'];
							
							if($exact_combo_offer_flag==0){
						$exact_category_name1=$exact_category_name;
					}else if($exact_combo_offer_flag==1){
						$exact_category_name1=$exact_combo_name;
					}
					
							
							$sql_upd1=$this->db->prepare("UPDATE `add_to_cart_subs` SET selling_rate='".$exact_selling_rate."' WHERE master_item_id='".$master_item_id."' AND add_to_cart_id='".$add_id."' AND item_disable=0");
		$sql_upd1->execute();
							
							
							
							
							$ok45+=$exact_selling_rate;
							

		$sql_upd2 = $this->db->prepare("UPDATE `add_to_carts` SET amount=:amount WHERE session_id='".$session_id."' AND id='".$add_id."' AND order_checkout=0 AND order_delivered=0 LIMIT 1;");
		$sql_upd2->bindParam(":amount", $ok45, PDO::PARAM_STR);
		$sql_upd2->execute();
		
							//exit;
							
					
							$result[]= array('id' =>$qry_add_subss['id'],
							'master_item_id' =>$qry_add_subss['master_item_id'],
							'add_to_cart_id' =>$qry_add_subss['add_to_cart_id'],
							'item_disable' =>$qry_add_subss['item_disable'],
							'combo_flag' =>$qry_add_subss['combo_flag'],
							'per_item_count' =>$qry_add_subss['item_count'],
							'item_quantity' =>$qry_add_subss['quantity'],
							'total_weight' => $qry_add_subss['quantity'].$exact_grade,
							'item_amount' =>$exact_selling_rate,
							'item_name'=>$exact_category_name1,
							'item_image' => $fetchimage,
							'quantity' => $exact_quantity,
							'admin_selling_amount'=>$exact_selling_rate11,
							'before_discounted_price'=>$before_discounted_price,
							'item_grad' => $exact_grade,
							'weight' => $ex_unit.$exact_grade,
'out_of_stock' => $out_of_stock
							);
							}

						$qry = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry);
            $sql->execute();
			$row_count= $sql->fetch(PDO::FETCH_ASSOC);
			$row_count_id=$row_count['id'];
			$row_amount=$row_count['amount'];


			
/////////////delivery_charges///////////////
			$qry_d = "SELECT * FROM master_generals where flag=0";			
			$sql = $this->db->prepare($qry_d);
            $sql->execute();
			$qry_dd = $sql->fetch(PDO::FETCH_ASSOC);
			$d_charges=$qry_dd['delivery_charges'];
			$d_amount=$qry_dd['minimum_amount'];
			///////////////
			
			
			if($row_amount<$d_amount)
			{
				$dl_charges=$d_charges;
				$after_d_amount=$row_amount+$dl_charges;
			}
			else{
				$dl_charges='0';
				$after_d_amount=$row_amount+$dl_charges;
			}




			$row_total_amount=$row_amount+$dl_charges;



			/*$result3= array('id' => $row_count['id'],
							'session_id' =>$row_count['session_id'],
							'user_id' =>$row_count['user_id'],
							'curent_date' =>$row_count['curent_date'],
							'time' =>$row_count['time'],
							'order_delivered' => $row_count['order_delivered'],
							'flag' => $row_count['flag'],
							'total_amount' => $row_count['amount'],
							'delivery_charges' => $dl_charges,
							'total_delivery_amount' => $row_total_amount,
							'address_available' => $address_available
                          );*/
			
			
			
			$qrycount = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$row_count_id."' AND item_disable=0 AND item_count>0";			
			$sql = $this->db->prepare($qrycount);
			$sql->execute();
				$total_count=$sql->rowCount();
				
			
			$qry1_cash = "SELECT * FROM logins where id='".$session_id."' ";			
			$qry1_cash = $this->db->prepare($qry1_cash);
			$qry1_cash->execute();
			$row_count1cash= $qry1_cash->fetch(PDO::FETCH_ASSOC);
			$walletbalance=round($row_count1cash['wallet_balance']);
			$jain_cash=round($row_count1cash['jain_cash']);
			//$jain_cash_transaction_limit='10';
			

$fetch_generals = $this->db->prepare("SELECT * FROM master_generals");
	    $fetch_generals->execute();
		$fetch_generals1 = $fetch_generals->fetch(PDO::FETCH_ASSOC);
		 $point_disc=$fetch_generals1['jain_cash_point_discount'];
		 

$jain_cash_transaction_dis=$row_total_amount*$point_disc/100;
			if($jain_cash_transaction_dis>$jain_cash)
			{
				$jain_cash_transaction_limit=round($jain_cash);
			}
			else if($jain_cash_transaction_dis<$jain_cash){
			
			$jain_cash_transaction_limit=round($jain_cash_transaction_dis);
			}
						
		$result2=array('count'=>$total_count, 'total_amount'=>$row_amount, 'delivery_charge'=>$dl_charges, 'total_delivery_amount'=>"$row_total_amount",
		'address_available'=>$address_available, 'wallet_balance'=>"$walletbalance", 'jain_cash'=>"$jain_cash", 'jain_cash_transaction_limit'=>"$jain_cash_transaction_limit");
				

if(empty($result))
							{
							$result= array();
							}
			
                $result1 = array("count_add_to_cart" => $result2, "fetch_add_to_cart_items" => $result);
                $success = array('Type' => 'OK', "Error" => '', 'Responce' => $result1);
                $this->response($this->json($success), 200);
            } else {
$result=array();
$result2=new stdClass();
$result1 = array("count_add_to_cart" => $result2, "fetch_add_to_cart_items" => $result);
                $error = array('Type' => "Error", "Error" => "No data found", 'Responce' =>$result1);
                $this->response($this->json($error), 200);
            }
		}
		
		else if($session_id>0 && $op=="inc")
		{
		
		$qryaddress = "SELECT * FROM customer_addresses where session_id='".$session_id."' AND default_address=1 AND flag=0";
					$qry = $this->db->prepare($qryaddress);
					$qry->execute();
					if($qry->rowCount()==1)
					{
					$address_available=true;
					}
					else{
					$address_available=false;
					}
									
		
		$qry = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry);
            $sql->execute();
			$row_post= $sql->fetch(PDO::FETCH_ASSOC);
			$cart_add_id=$row_post['id'];
			
			$qryadds = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$cart_add_id."' AND master_item_id='".$master_item_id."' AND item_disable=0";			
			$qryadds = $this->db->prepare($qryadds);
            $qryadds->execute();
			$sql_qryadds= $qryadds->fetch(PDO::FETCH_ASSOC);
		  	$sizeofcart1=$sql_qryadds['item_count'];
			if($sizeofcart1=='0'|| $sizeofcart1=='')
			{
			 $sizeofcart='0';
			}
			else
			{	
				 $sizeofcart=$sizeofcart1;
			}
			
			
			$m_qry = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
			$m_qry = $this->db->prepare($m_qry);
            $m_qry->execute();
			$m_fetc= $m_qry->fetch(PDO::FETCH_ASSOC);
			$selling_rate=$m_fetc['selling_rate'];
			$quantity=$m_fetc['quantity'];
			$combo_flag=$m_fetc['combo_offer_flag'];
			$add_to_cart_issue_count1=$m_fetc['add_to_cart_issue_item'];
			
			if($add_to_cart_issue_count1=='0'|| $add_to_cart_issue_count1=='')
			{
			 $add_to_cart_issue_count='0';
			}
			else
			{	
			$add_to_cart_issue_count=$add_to_cart_issue_count1;
			}
			
			if($sizeofcart < $add_to_cart_issue_count || $add_to_cart_issue_count=='0')
			{
			if($sql->rowCount()==0) {
			    $sql_insert = $this->db->prepare("INSERT into add_to_carts(session_id,curent_date,time,order_delivered)
				VALUES(:session_id,:curent_date,:time,0)");
                
                $sql_insert->bindParam(":session_id", $session_id, PDO::PARAM_STR);
                $sql_insert->bindParam(":curent_date", $curent_date, PDO::PARAM_STR);
                $sql_insert->bindParam(":time", $time, PDO::PARAM_STR);
                $sql_insert->execute();
				
				$add_id = $this->db->lastInsertId();
				$sql_insert = $this->db->prepare("INSERT into add_to_cart_subs(add_to_cart_id,master_item_id,quantity,selling_rate,item_count,combo_flag,item_disable)
				VALUES(:add_to_cart_id,:master_item_id,:quantity,:selling_rate,:item_count,:combo_flag,0)");
         
          $sql_insert->bindParam(":add_to_cart_id", $add_id, PDO::PARAM_STR);
				$sql_insert->bindParam(":master_item_id", $master_item_id, PDO::PARAM_STR);
                $sql_insert->bindParam(":quantity", $quantity, PDO::PARAM_STR);
				$sql_insert->bindParam(":selling_rate", $selling_rate, PDO::PARAM_STR);
				$sql_insert->bindParam(":item_count", $item_count, PDO::PARAM_STR);
				$sql_insert->bindParam(":combo_flag", $combo_flag, PDO::PARAM_STR);
                $sql_insert->execute();
				
				/*$qry_amount = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$add_id."' AND item_disable=0";			
			   $sql = $this->db->prepare($qry_amount);
               $sql->execute();
			   $row_user_amount= $sql->fetch(PDO::FETCH_ASSOC);
			   $row_user_amount1=$row_user_amount['selling_rate'];*/

				$sql_upd2 = $this->db->prepare("UPDATE `add_to_carts` SET amount=:amount WHERE session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0 LIMIT 1;");
				$sql_upd2->bindParam(":amount", $selling_rate, PDO::PARAM_STR);
                $sql_upd2->execute();
			}
			else{
				//echo 's';
				//exit;
			    /*$sql_upd = $this->db->prepare("UPDATE `add_to_carts` SET amount=0 WHERE session_id=:session_id AND order_delivered=0 LIMIT 1;");
				$sql_upd->bindParam(":session_id", $session_id, PDO::PARAM_STR);
                $sql_upd->execute();*/
				
				    $qry = "SELECT * FROM add_to_carts WHERE session_id=:session_id AND order_checkout=0 AND order_delivered=0 LIMIT 1;";
					$sql = $this->db->prepare($qry);
					$sql->bindParam(":session_id", $session_id, PDO::PARAM_STR);
					$sql->execute();
				    $row_user_add = $sql->fetch(PDO::FETCH_ASSOC);
					$exact_add_id=$row_user_add['id'];
					
					
				$qry_s= "SELECT * FROM add_to_cart_subs WHERE add_to_cart_id='".$exact_add_id."' AND master_item_id='".$master_item_id."' AND item_disable=0";
				$sql = $this->db->prepare($qry_s);
                $sql->execute();
				
				if ($sql->rowCount()==0) { 
				$sql_insert = $this->db->prepare("INSERT into add_to_cart_subs(add_to_cart_id,master_item_id,quantity,selling_rate,item_count,combo_flag,item_disable)
				VALUES(:add_to_cart_id,:master_item_id,:quantity,:selling_rate,:item_count,:combo_flag,0)");
				
                $sql_insert->bindParam(":add_to_cart_id", $exact_add_id, PDO::PARAM_STR);
				$sql_insert->bindParam(":master_item_id", $master_item_id, PDO::PARAM_STR);
                $sql_insert->bindParam(":quantity", $quantity, PDO::PARAM_STR);
				$sql_insert->bindParam(":selling_rate", $selling_rate, PDO::PARAM_STR);
				$sql_insert->bindParam(":item_count", $item_count, PDO::PARAM_STR);
				$sql_insert->bindParam(":combo_flag", $combo_flag, PDO::PARAM_STR);
                $sql_insert->execute();
				
				
				$qry_amount_1 = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$exact_add_id."' AND item_disable=0";			
			   $sql = $this->db->prepare($qry_amount_1);
               $sql->execute();
			    if($sql->rowCount()>0)
			   {
			   $row_user_amount_1= $sql->fetchALL(PDO::FETCH_ASSOC);
			   foreach($row_user_amount_1 as $data1)
			   {
				   $master_item_id_n=$data1['master_item_id'];
				    $quantity_n=$data1['quantity'];
					$item_count_n=$data1['item_count'];
				   
			$m_qry = "SELECT * FROM master_items where id='".$master_item_id_n."' AND flag=0";			
			$m_qry = $this->db->prepare($m_qry);
            $m_qry->execute();
			$m_fetc_e= $m_qry->fetch(PDO::FETCH_ASSOC);
			$selling_rate_e=$m_fetc_e['selling_rate'];
			$exact_rate_e=$selling_rate_e*$item_count_n;
				   
				   
				   $ok1+=$exact_rate_e;
			   }
			   }
			   
			   
				$sql_upd2 = $this->db->prepare("UPDATE `add_to_carts` SET amount=:amount WHERE session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0 LIMIT 1;");
				$sql_upd2->bindParam(":amount", $ok1, PDO::PARAM_STR);
                $sql_upd2->execute();
				
				}
				else{
					
					$qry_s1= "SELECT * FROM add_to_cart_subs WHERE add_to_cart_id='".$exact_add_id."' AND master_item_id='".$master_item_id."' AND item_disable=0";
				$sql = $this->db->prepare($qry_s1);
                $sql->execute();
				
				    $exact_sub_item = $sql->fetch(PDO::FETCH_ASSOC);
					$exact_sub_item_quantity=$exact_sub_item['quantity'];
					//$exact_sub_item_quantity=$exact_sub_item['quantity'];
					$exact_item_count=$exact_sub_item['item_count'];
					
			$m_qry = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
			$m_qry = $this->db->prepare($m_qry);
            $m_qry->execute();
			$m_fetc_f= $m_qry->fetch(PDO::FETCH_ASSOC);
			$selling_rate_f=$m_fetc_f['selling_rate'];
			$exact_sub_item_selling_rate=$selling_rate_f*$exact_item_count;
				   
				   
					//$exact_sub_item_selling_rate=$exact_sub_item['selling_rate'];
					$exact_add_idd=$exact_sub_item['add_to_cart_id'];
				    $sub_item_count=$exact_sub_item['item_count'];
					$exact_count=$sub_item_count + $item_count;
					$exact_quantity=$exact_sub_item_quantity + $quantity;
					$exact_selling_price=$exact_sub_item_selling_rate + $selling_rate_f;
    	
		$sql_upd1=$this->db->prepare("UPDATE `add_to_cart_subs` SET quantity='".$exact_quantity."', item_count='".$exact_count."', selling_rate='".$exact_selling_price."' WHERE master_item_id='".$master_item_id."' AND add_to_cart_id='".$exact_add_idd."' AND item_disable=0");				  $sql_upd1->execute();
				
				
			    $qry_amount_2 = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$exact_add_idd."' AND item_disable=0";			
			   $sql = $this->db->prepare($qry_amount_2);
               $sql->execute();
			  
			  if($sql->rowCount()>0)
			   {
			  $row_user_amount_3= $sql->fetchALL(PDO::FETCH_ASSOC);
			   
			   foreach($row_user_amount_3 as $data)
			   {
				   $master_item_id_i=$data['master_item_id'];
				   $item_count_i=$data['item_count'];
				   $quantity_i=$data['quantity'];
				   
				   
				   $m_qry = "SELECT * FROM master_items where id='".$master_item_id_i."' AND flag=0";			
			$m_qry = $this->db->prepare($m_qry);
            $m_qry->execute();
			$m_fetc_i= $m_qry->fetch(PDO::FETCH_ASSOC);
			$selling_rate_i=$m_fetc_i['selling_rate'];
			$exact_rate_i=$selling_rate_i*$item_count_i;
				   
				   $ok+=$exact_rate_i;
			   }
			   }
			   
			   
				$sql_upd2 = $this->db->prepare("UPDATE `add_to_carts` SET amount=:amount WHERE session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0 LIMIT 1;");
				$sql_upd2->bindParam(":amount", $ok, PDO::PARAM_STR);
                $sql_upd2->execute();
				}
			}
			
			
			$qry_post = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry_post);
            $sql->execute();
			$row_post= $sql->fetch(PDO::FETCH_ASSOC);
			$post_add_to_cart_id=$row_post['id'];
			
			$qry_post1 = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$post_add_to_cart_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qry_post1);
            $sql->execute();
			$row_post1= $sql->fetchALL(PDO::FETCH_ASSOC);
			foreach($row_post1 as $qry_add_subss) {
							$item_selling_rate = $qry_add_subss['selling_rate'];
							$item_quantity = $qry_add_subss['quantity'];
							$master_item_id = $qry_add_subss['master_item_id'];
							$item_count = $qry_add_subss['item_count'];

							$qryp = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
							$sql = $this->db->prepare($qryp);
							$sql->execute();
							$fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_item_name=$fetch_item_id['master_category_item_id'];
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_grad_units=$fetch_item_id['master_sub_grading_unit_id'];

							$exact_quantity=$fetch_item_id['quantity'];
							$exact_combo_offer_flag=$fetch_item_id['combo_offer_flag'];
							$exact_combo_name=$fetch_item_id['combo_name'];

							$exact_selling_rate11=$fetch_item_id['selling_rate'];
							$before_discounted_price=$fetch_item_id['before_discounted_price'];
							$exact_item_image=$fetch_item_id['item_image'];

                    $available_stock=$fetch_item_id['available_stock'];

				if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==1 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==1){
				$out_of_stock=true;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==4 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==4){
				$out_of_stock=true;
				}



							$exact_selling_rate=$item_count*$exact_selling_rate11;

							$fetchimage= $site_url. "catimage/" .$exact_item_image;

							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
							$sql = $this->db->prepare($qry_gr);
							$sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];
							
							$qrySubgrad = "SELECT * FROM master_sub_grading_units where id='".$exact_grad_units."' AND flag=0";
					$qrySubgrad = $this->db->prepare($qrySubgrad);
					$qrySubgrad->execute();
					$qrySubgrad1 = $qrySubgrad->fetch(PDO::FETCH_ASSOC);
						    $ex_unit = $qrySubgrad1['unit'];


							$qry_ex = "SELECT * FROM master_category_items where id='".$exact_item_name."' AND flag=0";			
							$sql = $this->db->prepare($qry_ex);
							$sql->execute();
							$fetch_item_id1 = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_category_name=$fetch_item_id1['category_name'];

							if($exact_combo_offer_flag==0){
						$exact_category_name1=$exact_category_name;
					}else if($exact_combo_offer_flag==1){
						$exact_category_name1=$exact_combo_name;
					}

							//exit;
					
								$result100[]= array('id' =>$qry_add_subss['id'],
								'master_item_id' =>$qry_add_subss['master_item_id'],
								'add_to_cart_id' =>$qry_add_subss['add_to_cart_id'],
								'item_disable' =>$qry_add_subss['item_disable'],
								'combo_flag' =>$qry_add_subss['combo_flag'],
								'per_item_count' =>$qry_add_subss['item_count'],
								'item_quantity' =>$qry_add_subss['quantity'],
								'total_weight' => $qry_add_subss['quantity'].$exact_grade,
								'item_amount' =>$exact_selling_rate,
								'item_name'=>$exact_category_name1,
								'item_image' => $fetchimage,
								'quantity' => $exact_quantity,
								'admin_selling_amount'=>$exact_selling_rate11,
								'before_discounted_price'=>$before_discounted_price,
								'item_grad' => $exact_grade,
								'weight' => $ex_unit.$exact_grade,
'out_of_stock' => $out_of_stock
								);
							}
							
							
							

/////////////delivery_charges///////////////
$qry = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry);
            $sql->execute();
			$row_count= $sql->fetch(PDO::FETCH_ASSOC);
			$row_count_id=$row_count['id'];
			$row_amount=$row_count['amount'];
			
			$qry_d = "SELECT * FROM master_generals where flag=0";			
			$sql = $this->db->prepare($qry_d);
            $sql->execute();
			$qry_dd = $sql->fetch(PDO::FETCH_ASSOC);
			$d_charges=$qry_dd['delivery_charges'];
			$d_amount=$qry_dd['minimum_amount'];
			///////////////
			
			
			if($row_amount<$d_amount)
			{
				$dl_charges=$d_charges;
				$after_d_amount=$row_amount+$dl_charges;
			}
			else{
				$dl_charges='0';
				$after_d_amount=$row_amount+$dl_charges;
			}

			$row_total_amount=$row_amount+$dl_charges;


			$qryitem_count = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$row_count_id."' AND master_item_id='".$master_item_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qryitem_count);
			$sql->execute();
			$row_item_count= $sql->fetch(PDO::FETCH_ASSOC);
			$sub_item_count=$row_item_count['item_count'];
            $sub_quantity=$row_item_count['quantity'];



                                         $qry = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
			                $sql = $this->db->prepare($qry);
                            $sql->execute();
		                        $fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_selling_rate_o=$fetch_item_id['selling_rate'];
							$sub_selling_rate=$exact_selling_rate_o*$sub_item_count;

							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
			                $sql = $this->db->prepare($qry_gr);
                            $sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];
                        $total_weight =$sub_quantity.$exact_grade;
			

			
			$qrycount = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$row_count_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qrycount);
			$sql->execute();
				$total_count=$sql->rowCount();
				
				
				$qry1_cash = "SELECT * FROM logins where id='".$session_id."' ";			
			$qry1_cash = $this->db->prepare($qry1_cash);
			$qry1_cash->execute();
			$row_count1cash= $qry1_cash->fetch(PDO::FETCH_ASSOC);
			$walletbalance=round($row_count1cash['wallet_balance']);
			$jain_cash=round($row_count1cash['jain_cash']);
			//$jain_cash_transaction_limit='10';
				

$fetch_generals = $this->db->prepare("SELECT * FROM master_generals");
	    $fetch_generals->execute();
		$fetch_generals1 = $fetch_generals->fetch(PDO::FETCH_ASSOC);
		 $point_disc=$fetch_generals1['jain_cash_point_discount'];
		 

$jain_cash_transaction_dis=$row_total_amount*$point_disc/100;
			if($jain_cash_transaction_dis>$jain_cash)
			{
				$jain_cash_transaction_limit=round($jain_cash);
			}
			else if($jain_cash_transaction_dis<$jain_cash){
			
			$jain_cash_transaction_limit=round($jain_cash_transaction_dis);
			}
				
			$result=array('count'=>$total_count, 'total_amount'=>$row_amount, 'delivery_charge'=>$dl_charges, 'total_delivery_amount'=>"$row_total_amount", 
			'address_available'=>$address_available, 'wallet_balance'=>"$walletbalance", 'jain_cash'=>"$jain_cash", 'jain_cash_transaction_limit'=>"$jain_cash_transaction_limit");


if(empty($result100))
							{
							$result100= array();
							}



				$result1 = array("count_add_to_cart" => $result,"fetch_add_to_cart_items" => $result100);
				$success = array('Type' => 'OK', "Error" => '', 'Responce' => $result1);
				$this->response($this->json($success), 200);
			}
			else if($sizeofcart==$add_to_cart_issue_count || $sizeofcart > $add_to_cart_issue_count){
				
				$qry = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
				$sql = $this->db->prepare($qry);
				$sql->execute();
				$row_count= $sql->fetch(PDO::FETCH_ASSOC);
				$row_count_id=$row_count['id'];
				$row_amount=$row_count['amount'];
				
				////////////
				$row_post= $sql->fetchALL(PDO::FETCH_ASSOC);
				foreach($row_post as $qry_add_subss) {
							$item_selling_rate = $qry_add_subss['selling_rate'];
							$item_quantity = $qry_add_subss['quantity'];
							$master_item_id = $qry_add_subss['master_item_id'];
							$item_count = $qry_add_subss['item_count'];

							$qryp = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
							$sql = $this->db->prepare($qryp);
							$sql->execute();
							$fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_item_name=$fetch_item_id['master_category_item_id'];
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_quantity=$fetch_item_id['quantity'];
							$exact_combo_offer_flag=$fetch_item_id['combo_offer_flag'];
							$exact_combo_name=$fetch_item_id['combo_name'];

							$exact_selling_rate11=$fetch_item_id['selling_rate'];
							$before_discounted_price=$fetch_item_id['before_discounted_price'];
							$exact_item_image=$fetch_item_id['item_image'];

							$exact_selling_rate=$item_count*$exact_selling_rate11;

							$fetchimage= $site_url. "catimage/" .$exact_item_image;

							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
							$sql = $this->db->prepare($qry_gr);
							$sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];

							$qry_ex = "SELECT * FROM master_category_items where id='".$exact_item_name."' AND flag=0";			
							$sql = $this->db->prepare($qry_ex);
							$sql->execute();
							$fetch_item_id1 = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_category_name=$fetch_item_id1['category_name'];

							if($exact_combo_offer_flag==0){
						$exact_category_name1=$exact_category_name;
					}else if($exact_combo_offer_flag==1){
						$exact_category_name1=$exact_combo_name;
					}

							//exit;
					
								$result100[]= array('id' =>$qry_add_subss['id'],
								'master_item_id' =>$qry_add_subss['master_item_id'],
								'add_to_cart_id' =>$qry_add_subss['add_to_cart_id'],
								'item_disable' =>$qry_add_subss['item_disable'],
								'combo_flag' =>$qry_add_subss['combo_flag'],
								'per_item_count' =>$qry_add_subss['item_count'],
								'item_quantity' =>$qry_add_subss['quantity'],
								'total_weight' => $qry_add_subss['quantity'].$exact_grade,
								'item_amount' =>$exact_selling_rate,
								'item_name'=>$exact_category_name1,
								'item_image' => $fetchimage,
								'quantity' => $exact_quantity,
								'admin_selling_amount'=>$exact_selling_rate11,
								'before_discounted_price'=>$before_discounted_price,
								'item_grad' => $exact_grade,
								'weight' => $exact_quantity.$exact_grade
								);
							}

/////////////delivery_charges///////////////
			$qry_d = "SELECT * FROM master_generals where flag=0";			
			$sql = $this->db->prepare($qry_d);
            $sql->execute();
			$qry_dd = $sql->fetch(PDO::FETCH_ASSOC);
			$d_charges=$qry_dd['delivery_charges'];
			$d_amount=$qry_dd['minimum_amount'];
			///////////////
			
			
			if($row_amount<$d_amount)
			{
				$dl_charges=$d_charges;
				$after_d_amount=$row_amount+$dl_charges;
			}
			else{
				$dl_charges=0;
				$after_d_amount=$row_amount+$dl_charges;
			}

			$row_total_amount=$row_amount+$dl_charges;

			$qryitem_count = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$row_count_id."' AND master_item_id='".$master_item_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qryitem_count);
			$sql->execute();
			$row_item_count= $sql->fetch(PDO::FETCH_ASSOC);
			$sub_item_count=$row_item_count['item_count'];
            $sub_quantity=$row_item_count['quantity'];



                                         $qry = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
			                $sql = $this->db->prepare($qry);
                            $sql->execute();
		                        $fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_selling_rate_o=$fetch_item_id['selling_rate'];
							$sub_selling_rate=$exact_selling_rate_o*$sub_item_count;

							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
			                $sql = $this->db->prepare($qry_gr);
                            $sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];
                        $total_weight =$sub_quantity.$exact_grade;
			

			
			$qrycount = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$row_count_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qrycount);
			$sql->execute();
				$total_count=$sql->rowCount();
				
				
				
				$result=array('count'=>$total_count, 'per_item_count'=>$sub_item_count, 'amount'=>$row_amount, 'delivery_amount'=>$dl_charges, 'total_amount'=>$row_total_amount, 'item_rate'=>$sub_selling_rate, 'total_weight'=>$total_weight);
		        $result1 = array("count_add_to_cart" => $result,"fetch_cart" => $result100);
				$success = array('Type' => 'Error', "Error" => 'Sorry, you cant add more times.', 'Responce' => $result1);
				$this->response($this->json($success), 200);
			}
				
		}
		else if($session_id>0 && $op=="dec")
		{
		
		$qryaddress = "SELECT * FROM customer_addresses where session_id='".$session_id."' AND default_address=1 AND flag=0";
					$qry = $this->db->prepare($qryaddress);
					$qry->execute();
					if($qry->rowCount()==1)
					{
					$address_available=true;
					}
					else{
					$address_available=false;
					}
									
		$qry = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry);
            $sql->execute();
			 $session_add_id= $sql->fetch(PDO::FETCH_ASSOC);
			 $session_add_id1=$session_add_id['id'];
			 $session_add_id2=$session_add_id['amount'];

				$minus_sub_fetch = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$session_add_id1."' AND master_item_id='".$master_item_id."' AND item_disable=0";			
			    $sql = $this->db->prepare($minus_sub_fetch);
                $sql->execute();
			    $sub_m_selling_rate= $sql->fetch(PDO::FETCH_ASSOC);
				
			    //$sub_m_selling_rate1=$sub_m_selling_rate['selling_rate'];
			    $sub_m_qty1=$sub_m_selling_rate['quantity'];
				$exact_item_count=$sub_m_selling_rate['item_count'];
				
				$m_qry = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
			$m_qry = $this->db->prepare($m_qry);
            $m_qry->execute();
			$m_fetc_j= $m_qry->fetch(PDO::FETCH_ASSOC);
			$selling_rate_j=$m_fetc_j['selling_rate'];
			$quantity_j=$m_fetc_j['quantity'];
			$sub_m_selling_rate1=$selling_rate_j*$exact_item_count;

				
			   $exact_count=$exact_item_count-$item_count;
			    $minus_rate=$sub_m_selling_rate1-$selling_rate_j;
			    $minus_quantity=$sub_m_qty1-$quantity_j; 
                $minus_amount=$session_add_id2-$selling_rate_j; 
			   
             if($minus_quantity==0 || $minus_quantity=='')
				{
$sql_m_upd2=$this->db->prepare("DELETE  FROM `add_to_cart_subs` WHERE master_item_id='".$master_item_id."' AND add_to_cart_id='".$session_add_id1."'");				                
			 $sql_m_upd2->execute();
			 
			 $sql_m_upd3 = $this->db->prepare("UPDATE `add_to_carts` SET amount='".$minus_amount."' WHERE session_id='".$session_id."' AND order_delivered=0");
				$sql_m_upd3->execute();
				}
				else{
				
			$sql_m_upd2=$this->db->prepare("UPDATE `add_to_cart_subs` SET quantity='".$minus_quantity."', item_count='".$exact_count."', selling_rate='".$minus_rate."' WHERE master_item_id='".$master_item_id."' AND add_to_cart_id='".$session_add_id1."' AND item_disable=0");				                
			 $sql_m_upd2->execute();
			 
				$sql_m_upd3 = $this->db->prepare("UPDATE `add_to_carts` SET amount='".$minus_amount."' WHERE session_id='".$session_id."' AND order_delivered=0");
				$sql_m_upd3->execute();
				}
				
				$qry_post = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry_post);
            $sql->execute();
			$row_post= $sql->fetch(PDO::FETCH_ASSOC);
			$post_add_to_cart_id=$row_post['id'];
			
			$qry_post1 = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$post_add_to_cart_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qry_post1);
            $sql->execute();
			$row_post1= $sql->fetchALL(PDO::FETCH_ASSOC);
			foreach($row_post1 as $qry_add_subss) {
							$item_selling_rate = $qry_add_subss['selling_rate'];
							$item_quantity = $qry_add_subss['quantity'];
							$master_item_id = $qry_add_subss['master_item_id'];
							$item_count = $qry_add_subss['item_count'];

							$qryp = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
							$sql = $this->db->prepare($qryp);
							$sql->execute();
							$fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_item_name=$fetch_item_id['master_category_item_id'];
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_grad_units=$fetch_item_id['master_sub_grading_unit_id'];

							$exact_quantity=$fetch_item_id['quantity'];
							$exact_combo_offer_flag=$fetch_item_id['combo_offer_flag'];
							$exact_combo_name=$fetch_item_id['combo_name'];

                    $available_stock=$fetch_item_id['available_stock'];

				if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==1 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==1){
				$out_of_stock=true;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==4 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==4){
				$out_of_stock=true;
				}
							$exact_selling_rate11=$fetch_item_id['selling_rate'];
							$before_discounted_price=$fetch_item_id['before_discounted_price'];
							$exact_item_image=$fetch_item_id['item_image'];

							$exact_selling_rate=$item_count*$exact_selling_rate11;

							$fetchimage= $site_url. "catimage/" .$exact_item_image;

							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
							$sql = $this->db->prepare($qry_gr);
							$sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];
							
							$qrySubgrad = "SELECT * FROM master_sub_grading_units where id='".$exact_grad_units."' AND flag=0";
					$qrySubgrad = $this->db->prepare($qrySubgrad);
					$qrySubgrad->execute();
					$qrySubgrad1 = $qrySubgrad->fetch(PDO::FETCH_ASSOC);
						    $ex_unit = $qrySubgrad1['unit'];


							$qry_ex = "SELECT * FROM master_category_items where id='".$exact_item_name."' AND flag=0";			
							$sql = $this->db->prepare($qry_ex);
							$sql->execute();
							$fetch_item_id1 = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_category_name=$fetch_item_id1['category_name'];

							if($exact_combo_offer_flag==0){
						$exact_category_name1=$exact_category_name;
					}else if($exact_combo_offer_flag==1){
						$exact_category_name1=$exact_combo_name;
					}

							//exit;
					
								$result100[]= array('id' =>$qry_add_subss['id'],
								'master_item_id' =>$qry_add_subss['master_item_id'],
								'add_to_cart_id' =>$qry_add_subss['add_to_cart_id'],
								'item_disable' =>$qry_add_subss['item_disable'],
								'combo_flag' =>$qry_add_subss['combo_flag'],
								'per_item_count' =>$qry_add_subss['item_count'],
								'item_quantity' =>$qry_add_subss['quantity'],
								'total_weight' => $qry_add_subss['quantity'].$exact_grade,
								'item_amount' =>$exact_selling_rate,
								'item_name'=>$exact_category_name1,
								'item_image' => $fetchimage,
								'quantity' => $exact_quantity,
								'admin_selling_amount'=>$exact_selling_rate11,
								'before_discounted_price'=>$before_discounted_price,
								'item_grad' => $exact_grade,
								'weight' => $ex_unit.$exact_grade,
'out_of_stock' => $out_of_stock
								);
							}


/////////////delivery_charges///////////////
$qry = "SELECT * FROM add_to_carts where session_id='".$session_id."' AND order_checkout=0 AND order_delivered=0";			
			$sql = $this->db->prepare($qry);
            $sql->execute();
			$row_count= $sql->fetch(PDO::FETCH_ASSOC);
			$row_count_id=$row_count['id'];
			$row_amount=$row_count['amount'];
			
			$qry_d = "SELECT * FROM master_generals where flag=0";			
			$sql = $this->db->prepare($qry_d);
            $sql->execute();
			$qry_dd = $sql->fetch(PDO::FETCH_ASSOC);
			$d_charges=$qry_dd['delivery_charges'];
			$d_amount=$qry_dd['minimum_amount'];
			///////////////
			
			if($row_amount<$d_amount && $row_amount!=0)
			{
				$dl_charges=$d_charges;
				$after_d_amount=$row_amount+$dl_charges;
			}
			else{
				$dl_charges='0';
				$after_d_amount=$row_amount+$dl_charges;
			}




		$row_total_amount=$row_amount+$dl_charges;

		$qryitem_count = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$row_count_id."' AND master_item_id='".$master_item_id."' AND item_disable=0";			
		$sql = $this->db->prepare($qryitem_count);
		$sql->execute();
		$row_item_count= $sql->fetch(PDO::FETCH_ASSOC);
		$sub_item_count=$row_item_count['item_count'];
		$sub_quantity=$row_item_count['quantity'];
		//$sub_selling_rate=$row_item_count['selling_rate'];



                            $qry = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
			                $sql = $this->db->prepare($qry);
                            $sql->execute();
		                        $fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_selling_rate_o=$fetch_item_id['selling_rate'];
							
							$sub_selling_rate=$exact_selling_rate_o*$sub_item_count;
							

							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
			                $sql = $this->db->prepare($qry_gr);
                            $sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];
                        $total_weight =$sub_quantity.$exact_grade;
			

			
			
			$qrycount = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$row_count_id."' AND item_disable=0 AND item_count>0";			
			$sql = $this->db->prepare($qrycount);
			$sql->execute();
				$total_count=$sql->rowCount();
				
				
				$qry1_cash = "SELECT * FROM logins where id='".$session_id."' ";			
			$qry1_cash = $this->db->prepare($qry1_cash);
			$qry1_cash->execute();
			$row_count1cash= $qry1_cash->fetch(PDO::FETCH_ASSOC);
			$walletbalance=round($row_count1cash['wallet_balance']);
			$jain_cash=round($row_count1cash['jain_cash']);
			//$jain_cash_transaction_limit='10';
				
$fetch_generals = $this->db->prepare("SELECT * FROM master_generals");
	    $fetch_generals->execute();
		$fetch_generals1 = $fetch_generals->fetch(PDO::FETCH_ASSOC);
		 $point_disc=$fetch_generals1['jain_cash_point_discount'];
		 

$jain_cash_transaction_dis=$row_total_amount*$point_disc/100;
			if($jain_cash_transaction_dis>$jain_cash)
			{
				$jain_cash_transaction_limit=round($jain_cash);
			}
			else if($jain_cash_transaction_dis<$jain_cash){
			
			$jain_cash_transaction_limit=round($jain_cash_transaction_dis);
			}

$result=array('count'=>$total_count, 'total_amount'=>$row_amount, 'delivery_charge'=>$dl_charges, 'total_delivery_amount'=>"$row_total_amount", 
	'address_available'=>$address_available, 'wallet_balance'=>"$walletbalance", 'jain_cash'=>"$jain_cash", 'jain_cash_transaction_limit'=>"$jain_cash_transaction_limit");
				

                                    if(empty($result100))
							{
							$result100= array();
							}

if($total_count>0)
{
$result1 = array("count_add_to_cart" => $result,"fetch_add_to_cart_items" => $result100);
				$success = array('Type' => 'OK', "Error" => '', 'Responce' => $result1);
				$this->response($this->json($success), 200);//exit;
}
else{

$result100=array();
$result=new stdClass();
$result1 = array("count_add_to_cart" => $result, "fetch_add_to_cart_items" => $result100);
                $error = array('Type' => "Error", "Error" => "No data found", 'Responce' =>$result1);
                $this->response($this->json($error), 200);

}


	

				
			
		
		}
		else if($session_id>0 && $op=="remove")
		{
		
		$qryaddress = "SELECT * FROM customer_addresses where session_id='".$session_id."' AND default_address=1 AND flag=0";
					$qry = $this->db->prepare($qryaddress);
					$qry->execute();
					if($qry->rowCount()==1)
					{
					$address_available=true;
					}
					else{
					$address_available=false;
					}
									
		
		$delete_qry1= "SELECT * FROM add_to_carts where id='".$add_to_cart_id."'";			
			$sql = $this->db->prepare($delete_qry1);
            $sql->execute();
			$delete_qry_rows1 = $sql->fetch(PDO::FETCH_ASSOC);
			$amount=$delete_qry_rows1['amount'];
			
			$delete_qry= "SELECT * FROM add_to_cart_subs where id='".$id."' AND add_to_cart_id='".$add_to_cart_id."' AND item_disable=0";			
			$sql = $this->db->prepare($delete_qry);
            $sql->execute();
			$delete_qry_rows = $sql->fetch(PDO::FETCH_ASSOC);
			$selling_rate=$delete_qry_rows['selling_rate'];
			
			$exact_amt=$amount-$selling_rate;
			//exit;
			
			$sql_delete_update = $this->db->prepare("UPDATE `add_to_carts` SET amount='".$exact_amt."' WHERE id='".$add_to_cart_id."'");
             $sql_delete_update->execute();
			 
			 
		$sql_cancellation = $this->db->prepare("DELETE  FROM `add_to_cart_subs` WHERE id='".$id."' AND add_to_cart_id='".$add_to_cart_id."' AND item_disable=0");
             $sql_cancellation->execute();
		
	 
			 
			 
			 
			$qry_post1 = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$add_to_cart_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qry_post1);
            $sql->execute();
			$row_post1= $sql->fetchALL(PDO::FETCH_ASSOC);
			foreach($row_post1 as $qry_add_subss) {
							$item_selling_rate = $qry_add_subss['selling_rate'];
							$item_quantity = $qry_add_subss['quantity'];
							$master_item_id = $qry_add_subss['master_item_id'];
							$item_count = $qry_add_subss['item_count'];

							$qryp = "SELECT * FROM master_items where id='".$master_item_id."' AND flag=0";			
							$sql = $this->db->prepare($qryp);
							$sql->execute();
							$fetch_item_id = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_item_name=$fetch_item_id['master_category_item_id'];
							$exact_grad=$fetch_item_id['master_grading_item_id'];
							$exact_grad_units=$fetch_item_id['master_sub_grading_unit_id'];

							$exact_quantity=$fetch_item_id['quantity'];
							$exact_combo_offer_flag=$fetch_item_id['combo_offer_flag'];
							$exact_combo_name=$fetch_item_id['combo_name'];

                    $available_stock=$fetch_item_id['available_stock'];

				if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==1 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==2){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==1){
				$out_of_stock=true;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==4 ){
				$out_of_stock=false;
				}
				else if($available_stock>0 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==5){
				$out_of_stock=true;
				}
				else if($available_stock<1 && $fetch_item_id['master_sub_category_item_id']==4){
				$out_of_stock=true;
				}
							$exact_selling_rate11=$fetch_item_id['selling_rate'];
							$before_discounted_price=$fetch_item_id['before_discounted_price'];
							$exact_item_image=$fetch_item_id['item_image'];

							$exact_selling_rate=$item_count*$exact_selling_rate11;

							$fetchimage= $site_url. "catimage/" .$exact_item_image;

							$qry_gr = "SELECT * FROM master_grading_items where id='".$exact_grad."' AND flag=0";			
							$sql = $this->db->prepare($qry_gr);
							$sql->execute();
							$fetch_qry_gr = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_grade=$fetch_qry_gr['grading'];
							
							$qrySubgrad = "SELECT * FROM master_sub_grading_units where id='".$exact_grad_units."' AND flag=0";
					$qrySubgrad = $this->db->prepare($qrySubgrad);
					$qrySubgrad->execute();
					$qrySubgrad1 = $qrySubgrad->fetch(PDO::FETCH_ASSOC);
						    $ex_unit = $qrySubgrad1['unit'];


							$qry_ex = "SELECT * FROM master_category_items where id='".$exact_item_name."' AND flag=0";			
							$sql = $this->db->prepare($qry_ex);
							$sql->execute();
							$fetch_item_id1 = $sql->fetch(PDO::FETCH_ASSOC);
							$exact_category_name=$fetch_item_id1['category_name'];

							if($exact_combo_offer_flag==0){
						$exact_category_name1=$exact_category_name;
					}else if($exact_combo_offer_flag==1){
						$exact_category_name1=$exact_combo_name;
					}

							//exit;
					
								$result100[]= array('id' =>$qry_add_subss['id'],
								'master_item_id' =>$qry_add_subss['master_item_id'],
								'add_to_cart_id' =>$qry_add_subss['add_to_cart_id'],
								'item_disable' =>$qry_add_subss['item_disable'],
								'combo_flag' =>$qry_add_subss['combo_flag'],
								'per_item_count' =>$qry_add_subss['item_count'],
								'item_quantity' =>$qry_add_subss['quantity'],
								'total_weight' => $qry_add_subss['quantity'].$exact_grade,
								'item_amount' =>$exact_selling_rate,
								'item_name'=>$exact_category_name1,
								'item_image' => $fetchimage,
								'quantity' => $exact_quantity,
								'admin_selling_amount'=>$exact_selling_rate11,
								'before_discounted_price'=>$before_discounted_price,
								'item_grad' => $exact_grade,
								'weight' => $ex_unit.$exact_grade,
'out_of_stock' => $out_of_stock
								);
								
							}
			
			

/////////////delivery_charges///////////////
 $qry = "SELECT * FROM add_to_carts where id='".$add_to_cart_id."'";			
			$sql = $this->db->prepare($qry);
            $sql->execute();
			$row_count= $sql->fetch(PDO::FETCH_ASSOC);
			$row_count_id=$row_count['id'];
			$row_amount=$row_count['amount'];
			
			$qry_d = "SELECT * FROM master_generals where flag=0";			
			$sql = $this->db->prepare($qry_d);
            $sql->execute();
			$qry_dd = $sql->fetch(PDO::FETCH_ASSOC);
			$d_charges=$qry_dd['delivery_charges'];
			$d_amount=$qry_dd['minimum_amount'];
			///////////////
			
			
			if($row_amount<$d_amount && $row_amount!=0)
			{
				$dl_charges=$d_charges;
				$after_d_amount=$row_amount+$dl_charges;
			}
			else{
				$dl_charges='0';
				$after_d_amount=$row_amount+$dl_charges;
			}
			$row_total_amount=$row_amount+$dl_charges;

			$qrycount = "SELECT * FROM add_to_cart_subs where add_to_cart_id='".$add_to_cart_id."' AND item_disable=0";			
			$sql = $this->db->prepare($qrycount);
			$sql->execute();
				$total_count=$sql->rowCount();
				
				
				$qry1_cash = "SELECT * FROM logins where id='".$session_id."' ";			
			$qry1_cash = $this->db->prepare($qry1_cash);
			$qry1_cash->execute();
			$row_count1cash= $qry1_cash->fetch(PDO::FETCH_ASSOC);
			$walletbalance=round($row_count1cash['wallet_balance']);
			$jain_cash=round($row_count1cash['jain_cash']);
			//$jain_cash_transaction_limit='10';
		
$fetch_generals = $this->db->prepare("SELECT * FROM master_generals");
	    $fetch_generals->execute();
		$fetch_generals1 = $fetch_generals->fetch(PDO::FETCH_ASSOC);
		 $point_disc=$fetch_generals1['jain_cash_point_discount'];
		 

$jain_cash_transaction_dis=$row_total_amount*$point_disc/100;
			if($jain_cash_transaction_dis>$jain_cash)
			{
				$jain_cash_transaction_limit=$jain_cash;
			}
			else if($jain_cash_transaction_dis<$jain_cash){
			
			$jain_cash_transaction_limit=$jain_cash_transaction_dis;
			}


	$result=array('count'=>$total_count, 'total_amount'=>$row_amount, 'delivery_charge'=>$dl_charges, 'total_delivery_amount'=>"$row_total_amount", 
	'address_available'=>$address_available, 'wallet_balance'=>"$walletbalance", 'jain_cash'=>"$jain_cash", 'jain_cash_transaction_limit'=>"$jain_cash_transaction_limit");
				
				
if(empty($result100))
							{
							$result100= array();
							}
							
							
							if($total_count>0)
							{
								$result1=array("count_add_to_cart"=>$result, "fetch_add_to_cart_items"=>$result100);
                $success = array('Type' => 'OK', "Error" => '', 'Responce' => $result1);
                $this->response($this->json($success), 200);
		
							}
							else{
							$result100=array();
$result=new stdClass();
$result1 = array("count_add_to_cart" => $result, "fetch_add_to_cart_items" => $result100);
                $error = array('Type' => "Error", "Error" => "No data found", 'Responce' =>$result1);
                $this->response($this->json($error), 200);
							
							}
							

				
		}
		
				
		