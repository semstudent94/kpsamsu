<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<?php include('head.php')?>
<body>
<!--Header-->
<?php if(isset($_SESSION['userdata'])) {include('headerlogin.php');} else {include('header.php');}?>
<!--Header end-->
<!--banner strat here-->
<!--banner end here-->
<!--block-layer2 start here-->
<div class="blc-layer2" style="min-height:100px;">
	<div class="container">
		<div class="blc-layer2-main" >
				<div class="col-md-6 blc-layer2-left" style="margin-top: 4em; margin-bottom: 4em;">
					<h3>WELCOME TO BUTIK ALFALFA COLLECTION</h3>
					<p>SELAMAT BERBELANJA</p>
				</div>
				<div class="col-md-6 blc-layer2-right">
				
				</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--block-layer2 end here-->
<!--home-block start here-->
<div class="home-block" style="padding-top:0em;">
	<div class="container" style="width:100%">
		<div class="home-block-main">
			<?php foreach($all as $P) { ?>
				<div class="col-md-2 banner-right simpleCart_shelfItem" style="padding-top:0px !important;">
				<h1 style="margin-bottom: 4px; font-size:30px;"><?= $P->Product_name?></h1>
				<h5 class="item_price">Rp <?= $P->Price?></h5>
				<ul class="bann-small-img" style="margin-top: 4px;">
					<li style="margin-right:0px; width:100%;"> <a href="<?= base_url('user/Detailproduct/viewDetailProduct/').$P->Id ?>"><img style="width:100%;height:240px;" src="<?= base_url_shop()."images/".$P->Photo_name?>"></a></li>
				</ul>
				<ul class="bann-btns">
				<li style="display:block; margin-right:0px;"><a href="#" onclick="addtocart('<?= $P->Id?>','<?php if(isset($_SESSION['userdata'])) {echo 'TRUE';} else {echo 'False';} ?>')" >Add To Cart</a></li>
        </ul>
			</div>
			<?php } ?>

		</div>
	</div>
</div>	
<!--home block end here-->
<!--footer strat here-->
<?php  include "modal_status.php";  ?>
<?php  include "modal_uploadbukti.php";  ?>
<?php include('footer.php')?>
<!--footer end here-->
</body>

</html>