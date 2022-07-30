<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<title><?php echo $title;?></title>
	<link rel="shortcut icon" href="<?= base_url('assets/');?>img/<?php echo $website->icon;?>">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/bootstrap/css/style.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/bootstrap/css/all.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/fontawesome/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/fontawesome/all.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/fontawesome/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/bootstrap/css/AdminLTE.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/bootstrap/css/blue.css">
	<script src="<?= base_url('assets/');?>vendor/bootstrap/js/jquery.js"></script>
	<script src="<?= base_url('assets/');?>vendor/bootstrap/js/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" rel="stylesheet">
	<style type="text/css">
		.loader{
			height: 30px;
			text-align: center;
			width: 150px;
			margin: 0 auto;
			padding: 10px;
			display: none;
		}
	</style>
</head>
<body>
<nav id="navbar_main" class="black mobile-offcanvas navbar navbar-expand-lg navbar-dark bg-dark fixed-top bg-transparent my-0"> 
	<a class="navbar-brand" href="#"><img src="<?= base_url('assets/');?>img/logo.png" class="ml-5 w-75"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<div class="offcanvas-header mt-3">  
			<a class="btn btn-close float-right">
				<svg width="2.5em" height="2.5em" viewBox="0 0 16 16" class="bi bi-x" fill="white" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
				</svg>
			</a>
			<a class="navbar-brand py-2" href="#"><img src="<?= base_url('assets/');?>img/logo.png" class="ml-5 w-75"></a>
		</div>
		<ul class="navbar-nav ml-auto text-center nunito">
			<li class="nav-item active1 beranda">
				<a class="nav-link mr-2 ml2" href="<?= base_url(); ?>" data-dismiss="collapse">Beranda <span class="sr-only">(current)</span></a>
			</li>
			<?php foreach($pages as $page) : ?>
			<li class="nav-item <?php if($page->page_link == "list-produk"){ echo "active";}else{ echo "active1";}?>">
				<a class="nav-link mr-2 ml-2" href="<?= $page->page_link; ?>" data-dismiss="collapse" target="<?php if($page->page_link == "https://youtu.be/CkKej0KrgkY"){ echo "blank";} else { echo "";} ?>"><?= $page->page_name; ?></a>
			</li>
		<?php endforeach; ?>
		</ul>
	</div>
</nav>
<section class="jumbotron jumbotron-fluid bg-transparent mt-4 my-0" id="Beranda">
	<div class="container mt-5">
		<div class="col-xl-12 text-center">
			<h4 class="noto-sans2">Produks</h4>
		</div>
		<div class="row mt-5 text-center" id="products">
			<?php foreach ($products as $product) : ?>
					<div class="col-8 col-sm-5 col-xl-3 mt-5 produk_center center">
						<a href="<?= base_url('produk/'.$product->product_id);?>">
							<div class="card" style="overflow: hidden; padding: 0;">
								<img src="<?= base_url('assets/product-img/') . $product->gambar;?>" style="max-height: 200px;" class="w-75 m-auto">
								<div class="col-xl-12 mt-3">
									<h5 class="noto-sans6 card-title"><?php echo $product->nama;?></h5>
								</div>
								<div class="col-xl-12">
									<font class="nunito">Rp <?php echo $product->harga;?></font>
								</div>
							</div>
						</a>
					</div>
			<?php endforeach; ?>
		</div>
		<div class="loader"><img src="<?= base_url('assets/img/preloader.gif'); ?>"></div>
	</div>
</section>
<script type="text/javascript">
	var $j = jQuery.noConflict();
</script>
<script type="text/javascript">
$(document).ready(function(){
	var page = 1;
	var total_pages = "<?php echo $totalPages; ?>";
	$(window).scroll(function(){
		if($(window).scrollTop() + $(window).height() >= $(document).height()){
			page++;
			if(page < total_pages){
				loadData(page);
			}
		}
	});
	function loadData(page){
		$(".loader").css("display","block");
		$j.ajax({
			method : "GET",
			url : "<?= base_url('products_list'); ?>",
			data : { page : page }
		})
		.done(function(content){
			$('.loader').css('display','none');
			$('#products').append(content).html();
		});
	}
});
</script>
