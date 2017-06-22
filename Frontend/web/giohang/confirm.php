<?php
	if(isset($_GET['code_order'])){
		$code_order = $_GET['code_order'];
		include_once('connect/ketnoi.php');

		$sqllist = "SELECT * FROM orderlist WHERE code_order = '$code_order'";
		$querylist = mysql_query($sqllist);
		$total  =mysql_num_rows($querylist);
		if($total>0){
			while ($rowlist = mysql_fetch_array($querylist)) {
				$rslist = $rowlist['confirm'];
				if($rslist == "Awaiting confirmation") {
					$sql1 = "SELECT * FROM ordercontent WHERE code_order = '$code_order'";
					$query1 = mysql_query($sql1);

					while ($rows = mysql_fetch_array($query1)) {
						$rs  = $rows['id_sp'];
						$sql2 = "SELECT * FROM sp WHERE id_sp = $rs";
						$query2 = mysql_query($sql2);
						while ($rowsp = mysql_fetch_array($query2)) {
						$buy = $rowsp['buy'] + $rows['sl_sp'];
						$sql3 = "UPDATE sp SET buy = '$buy' WHERE id_sp = '$rs'";
						$query3 = mysql_query($sql3);
						}
					}
				}
			}
			$sql = "UPDATE orderlist SET confirm = 'Confirmed' WHERE code_order = '$code_order'";
			$query = mysql_query($sql);
		
			include_once('confirm_success.php');

		}else{
			include_once('confirm_fail.php');
		}
	}
?>