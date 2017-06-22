<?php
	include("connect/ketnoi.php");
 	$id = $_GET['id'];
    $sqlDeleted = "DELETE FROM thanhvien WHERE id_thanhvien ='$id'";
    $queryDeleted = mysql_query($sqlDeleted); 

    header("location:sp.php?page_layout=thanhvien");
?>