<?php
	$sqlview = "SELECT * FROM sp ORDER BY buy DESC LIMIT 15";
	$queryview  = mysql_query($sqlview);
?>
<div style="background-color: #00b3b3; height: 40px"><h5 style="color: #fff; padding-top: 13px; padding-left: 15px; margin-bottom: 10px"><b>Top sản phẩm mua nhiều</b></h5></div>

			<div id="myCarousel_topbuy" class="carousel slide" data-ride="carousel" data-interval="3000">
			
				<div class="carousel-inner" role="listbox">
				<?php
					$i = 0;
					$j = 0;
					$total = mysql_num_rows($queryview);
					while ($rowsview = mysql_fetch_array($queryview)) {

				?>
					<!-- In một Item active -->
					<?php if($i%5==0 && $j<=0 ){echo "<div class='item active' style='margin-left:70px; transition: 0.8s'>";}elseif($i%5==0 && $j%5==0){echo "<div class='item' style='margin-left:70px; transition: 0.8s'>";} ?>
						<!-- In thông tin một sản phẩm -->
						<div class="production" style="width: 180px; height: 220px; margin: 10px; border: solid 1px #eee">
							<div style="height: 180px">
								<a href="index.php?page_layout=thongtinsanpham&id_sp=<?php echo $rowsview['id_sp'] ;?>"><center><img src="image/Source/<?php echo $rowsview['anh_sp']?>" class="img-responsive" alt="" width="160px" height="auto"></center></a>
							</div>
							<div style="height:40px">
								<p class="name-production" style="padding-top: 2px; font-size: 10px"><?php echo $rowsview['ten_sp']?></p>
								<p class="price-production" style="padding-top: 3px; font-size: 10px"><b><?php echo number_format($rowsview['gia_sp'],0,',','.') ?>VND</b></p>
							</div>
						</div>
						<!-- Kết thúc in thông tin 1 sp -->
					<?php if($j%5==4 || $j==$total-1){echo "</div>";}?>

				<?php
					$i +=1;
					$j +=1;
				}
				?>
				<a class="left carousel-control" href="#myCarousel_topbuy" role="button" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel_topbuy" role="button" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			      <span class="sr-only">Next</span>
			    </a>
					
				</div>
			</div>
			<div class="clear"></div>
			<center><a href="index.php?page_layout=topbuy"><button style="margin-top: 10px" type="button" class="btn btn-primary">Xem thêm >></button></a></center>