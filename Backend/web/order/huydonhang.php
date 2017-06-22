<?php 
include("connect/ketnoi.php");

if (isset($_GET['code_order'])) {
	$code_order = $_GET['code_order'];
	$sql = "SELECT * FROM ordercontent WHERE code_order = '$code_order'";
	$query  = mysql_query($sql);

	while ($rows = mysql_fetch_array($query)) {
		$id_sp = $rows['id_sp'];
		$sl_sp = $rows['sl_sp'];

		$sql1 = "SELECT * FROM sp WHERE id_sp = $id_sp";
		$query1 = mysql_query($sql1);
		$rows1 = mysql_fetch_array($query1);
		$rs = $rows1['sl_sp'];
		$sl_sp += $rs;

		$sql2 = "UPDATE sp SET sl_sp = $sl_sp WHERE id_sp = $id_sp";
		$query2 = mysql_query($sql2);
	}

	$sql3 = "UPDATE orderlist SET status = 'Đã hủy' WHERE code_order = '$code_order'";
	$query3 = mysql_query($sql3);

	header("location:sp.php?page_layout=order");
}else {
	header("location:sp.php?page_layout=order");
}

?>