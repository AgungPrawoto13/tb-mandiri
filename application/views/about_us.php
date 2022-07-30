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
			<li class="nav-item <?php if($page->page_link == "tentang_kami"){ echo "active";}else{ echo "active1";}?>">
				<a class="nav-link mr-2 ml-2" href="<?= $page->page_link; ?>" data-dismiss="collapse" target="<?php if($page->page_link == "https://youtu.be/CkKej0KrgkY"){ echo "blank";} else { echo "";} ?>"><?= $page->page_name; ?></a>
			</li>
		<?php endforeach; ?>
		</ul>
	</div>
</nav>

<section class="jumbotron jumbotron-fluid bg-transparent mt-5" id="Beranda">
	<div class="container mt-5">
		<div class="row mt-5">
			<div class="col-xl-12 text-center">
				<h3 class="noto-sans2"><b>Siapa Kami ?</b></h3>
			</div>
			<div class="col-12 col-sm-12 col-xl-6">
				<div class="col-sm-12 kata">
					<div class="row">
						<div class="col-12 col-xl-12 mt-4">
							<font class="nunito2">
								Melihat kondisi  perkembangan dunia bisnis tertutama dibidang otomotive dan tepatnya mobil bekas, oleh karena itu saya mencoba untuk mengembangkan sayap ke penjualan besi, baja ringan dan lainya. Awal mula menjalankan bisnis ini ada seorang teman yang mengajak untuk menjalankan peluang ini.
							</font>
						</div>
						<div class="col-12 col-xl-12 mt-5">
							<font class="nunito2">
								pada mula ditawarkan saya belum langsung untuk diterima dan jalankan usaha ini. mulanya saya ditawarkan dan tertarik. Setelah ada ketertarikan terhadap bisnis yang akan saya jalankan ini mulai saya pelajari dan bertukar pikiran dengan teman-teman dekat serta bertanya kepada orang-orang yang sudah mengeluti bisnis ini. 
							</font>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-xl-6 mt-5">
				<img src="<?= base_url('assets/');?>img/bg tb mandiri.jpeg" class="w-100">
			</div>
		</div>
	</div>
</section>
<section class="jumbotron jumbotron-fluid bg-transparent poto poto1" id="Beranda">
	<div class="container">
		<div class="row">
			<div class="col-12 col-xl-6 ">
				<img src="<?= base_url('assets/');?>img/bg tb mandiri.jpeg" class="w-100">
			</div>
			<div class="col-12 col-xl-6">
				<div class="row">
					<div class="col-12 col-xl-12 mt-4">
						<font class="nunito2">
							Pada saat saya bertanya ke mereka respon yang mereka sampaikan sangat bagus, dengan kesimpulan bahwa rata-rata pendapat dari mereka bahwasanya peluang toko besi ini sangat besar. Pada akhir tahun 2019 saya mencoba untuk memulai bisnis toko besi ini, adapun pada awalnya berjalan cukup baik, namun setelah berjalan 2bulan mulai ada penurunan omset yang sangat drastis.
						</font>
					</div>
					<div class="col-12 col-xl-12 mt-5">
						<font class="nunito2">
							kemudian saya mencoba untuk mengevaluasi kembali karena modal yang sudah tertanam pada toko besi sudah cukup besar. Dengan beberapa manufer yang saya lakukan dan saya jalani dalam 6bulan berikutnya, al hasil membuahkan peluang yang sangat bagus dan akhirnya berjalan lah sampai saat ini.
						</font>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>