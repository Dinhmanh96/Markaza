<?php
	include_once('../sanpham/connect/ketnoi.php');
	$sql = "INSERT INTO test(number_test)VALUES('2')";
	$query = mysql_query($sql);
	echo "Test Sever Running Realtime...Nguyễn Đình Mạnh";
?>

<!-- <?php
//Không giới hạn thời gian thực thi
set_time_limit(0);
 
//Tạo tập tin điều khiển hoạt động cronJob
$workFile = 'run.cn';
if (file_exists($workFile) == false) {
	$fs = fopen($workFile, 'w') or die();
	fclose($fs);
}
 
//Thực hiện vòng lặp vô tận
while (true) {
	//Nếu tập tin workFile tồn tại thì tiếp tục làm việc, bị xóa thì dừng CronJob
	if (file_exists($workFile)) {
		//Begin Block
		//Khối lệnh thực hiện tác vụ mong muốn
		//End Block
		sleep(1000);
	} else {
		break;
	}
}
?> -->