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
				<a class="nav-link mr-2 ml-2" data-dismiss="collapse" href="<?php if($page->page_link == "https://youtu.be/CkKej0KrgkY"){ echo $page->page_link; }else{ echo base_url($page->page_link); }?> " target="<?php if($page->page_link == "https://youtu.be/CkKej0KrgkY"){ echo "blank"; } else { echo "";} ?>"><?= $page->page_name; ?></a>
			</li>
		<?php endforeach; ?>
		</ul>
	</div>
</nav>
<section class="jumbotron jumbotron-fluid bg-transparent mt-4 my-0" id="Beranda">
	<div class="container-fluid mt-5">
		<div class="col-xl-12 geser">
			<h3 class="nunito2 font-weight-bold">Beranda / Produk</h3>
		</div>
	</div>
	<div class="container">
		<div class="col-xl-10">
			<div class="row">
				<div class="col-9 col-sm-5 col-xl-5 mt-5 kanan produk_center center">
					<img src="<?= base_url('assets/product-img/' . $product->gambar);?>" class="w-75">
				</div>
				<div class="col-xl-5 mt-5">
					<div class="row">
						<div class="col-xl-12 mt-3">
							<font class="noto-sans6 font-weight-bold"><?= $product->nama; ?></font>
						</div>
						<div class="col-xl-12 mt-3">
							<font class="roboto3"><?= $product->merk; ?></font>
						</div>
						<div class="col-xl-12 tengah">
							<div class="row">
								<div class="col-xl-12">
									<div class="row">
										<div class="col-xl-12 col-sm-12 text-left">
											<label class="nunito"><?= $product->deskripsi; ?></label>
										</div>
										<!-- <div class="col-xl-7">
											<input class="form-control" type="text" name="ukuran"></input>
										</div> -->
									</div>
								</div><!-- 
								<div class="col-xl-6">
									<div class="row">
										<div class="col-xl-5">
											<label class="nunito"><?= $product->deskripsi; ?></label>
										</div>
										<div class="col-xl-7">
											<input class="form-control" type="text" name="ukuran"></input>
										</div>
									</div>
								</div> -->
							</div>
						</div>
						<div class="col-xl-12 mt-3">
							<font class="nunito3 nunito">Harga mulai dari</font><br>
							<font class="nunito">Rp.<?= $product->harga; ?></font>
						</div>
						
						<div class="col-xl-12 mt-4">
							<a class="btn btn-danger roboto2 text-center form-control text-white" href="https://api.whatsapp.com/send?phone=+6281374624487&text=Permisi, melihat website mandiri steel. Saya ingin Memesan" target="blank">Pesan</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="jumbotron jumbotron-fluid bg-transparent mr-4" id="Beranda">
	<div class="container-fluid">
		<div class="col-xl-12 text-center">
			<h2 class="noto-sans"><b>Produk lainya</b></h2>
		</div>
		<div class="col-xl-12 mt-5">
			<div class="row text-center">
				<?php
				foreach($produk_lainya as $product){
					?>
						<div class="col-8 col-sm-5 col-xl-3 produk_center center">
							<a href="<?= base_url('produk/'.$product->product_id);?>">
								<img src="<?= base_url('assets/');?>product-img/<?php echo $product->gambar;?>" class="produk w-75">
								<br>
								<div class="col-xl-12">
									<font class="noto-sans6"><?php echo $product->nama;?></font>
								</div>
								<div class="col-xl-12">
									<font class="nunito"><?php echo $product->harga;?></font>
								</div>
							</a>
						</div>
					<?php
				}
				?>
			</div>
		</div>
	</div>
</section>