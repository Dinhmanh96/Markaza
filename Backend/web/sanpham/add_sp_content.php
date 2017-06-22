<?php
	
	// ob_end_clean();
	include("connect/ketnoi.php");
	// $id = $_GET['id'];
	// $sql = "SELECT * FROM thanhvien WHERE id_thanhvien ='$id'";
	// $query = mysql_query($sql);
	// $rows = mysql_fetch_array($query);
	$sqlDmt = 'SELECT * FROM dmt';
	$queryDmt = mysql_query($sqlDmt);

	$sqlDmn = 'SELECT * FROM dmn';
	$queryDmn = mysql_query($sqlDmn);


 	if(isset($_POST['submit'])){

 				$iddmn = $_POST['iddmn'];
 				
 				$sql = "SELECT id_dmt FROM dmn WHERE id_dmn = $iddmn";
 				$query = mysql_query($sql);

 				$rs = mysql_fetch_assoc($query);

 				$iddmt = $rs['id_dmt'];

				$ten_sp = $_POST['ten_sp'];
				$gia_sp = $_POST['gia_sp'];
				$bh_sp = $_POST['bh_sp'];
				$sl_sp = $_POST['sl_sp'];
				$chitiet_sp = $_POST['chitiet_sp'];
				$th_sp = $_POST['th_sp'];
				$cs_sp = $_POST['cs_sp'];
				$baiviet_sp = $_POST['baiviet_sp'];
				$view = $_POST['view'];
				$anh_sp = $_FILES['anh_sp']['name'];
				$tmp = 	$_FILES['anh_sp']['	'];
				move_uploaded_file($tmp, '../Frontend/image/Source/'.$anh_sp);


				$sql = "INSERT INTO sp(id_dmt,id_dmn,ten_sp,gia_sp,bh_sp,anh_sp,chitiet_sp,th_sp,sl_sp,cs_sp,view,baiviet_sp)VALUES('$iddmt','$iddmn','$ten_sp','$gia_sp','$bh_sp','$anh_sp','$chitiet_sp','$sl_sp','$th_sp','$cs_sp','$view','$baiviet_sp')";
				$query = mysql_query($sql);
				header('location:sp.php');
				}

?>

<hr>
		<form enctype="multipart/form-data" method="post">
			<div class="form-group">
				<label for="">ID Danh mục</label>

				<select class="form-control" name="iddmn">
				<?php
					while ($rowDmn = mysql_fetch_array($queryDmn)) {
					?>
				 	<option value="<?php echo $rowDmn['id_dmn'] ;?>"><?php echo $rowDmn['ten_dmn'] ;?>

					<?php
					}
				?>
				</select>
			</div>
			<div class="form-group">
				<label for="">Tên sản phẩm</label>
				<input type="text" name="ten_sp" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="">Giá</label>
				<input type="number" name="gia_sp" class="form-control" required>
			</div>

			<div class="form-group">
				<label for="">Bảo hành</label>
				<input type="number" name="bh_sp" class="form-control">
			</div>

			<div class="form-group">
				<label for="">Ảnh</label>
				<input type="file" name="anh_sp" class="form-control">
			</div>

			<div class="form-group">
				<label for="">Thương hiệu</label>
				<input type="text" name="th_sp" class="form-control">
			</div>

			<div class="form-group">
				<label for="">Số lượng</label>
				<input type="number" name="sl_sp" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="">Chỉ số Q/c</label>
				<input type="number" name="cs_sp" class="form-control">
			</div>

			<div class="form-group">
				<label for="">Lượt View</label>
				<input type="number" name="view" value="0" class="form-control" readonly>
			</div>

			
			<div class="form-group">
				<label for="">Chi tiết</label>
				<textarea rows="8" type="text" name="chitiet_sp" class="form-control" placeholder="Mỗi đặc tính sản phẩm viết 1 dòng"></textarea>
			</div>
			<div class="form-group">
				<label for="">Chi tiết</label>
				<textarea rows="8" type="text" name="baiviet_sp" class="form-control ckeditor"></textarea>
				<script type="text/javascript">
				var editor = CKEDITOR.replace('content',{
				language:'vi',
				filebrowserImageBrowseUrl: '../../ckfinder/ckfinder.html?Type=Images',
				filebrowserFlashBrowseUrl: '../../ckfinder/ckfinder.html?Type=Flash',
				filebrowserImageUploadUrl: '../../ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
				filebrowserFlashUploadUrl: '../../public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
				});
				</script>
			</div>

	
			<input type="submit" name="submit" value="Thêm" class="btn btn-primary">
		</form>
<hr>