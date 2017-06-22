<?php

	include("connect/ketnoi.php");
    
    $id = $_GET['id'];


    $sqlDeleted1 = "SELECT * FROM orderlist WHERE id_order ='$id'";
    $queryDeleted1 = mysql_query($sqlDeleted1);
    while ($row = mysql_fetch_array($queryDeleted1)) {
    	$rs = $row['code_order'];
    	$sqlDeleted2 = "DELETE FROM ordercontent WHERE code_order ='$rs'";
   		$queryDeleted2 = mysql_query($sqlDeleted2);
    }
    $sqlDeleted = "DELETE FROM orderlist WHERE id_order ='$id'";
    $queryDeleted = mysql_query($sqlDeleted); 
    header("location:sp.php?page_layout=order"); 
?>