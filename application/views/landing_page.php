<section id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
	<div class="full">
		<div class="carousel-caption teks">
			<div class="jumbotron bg-transparent kiri">
				<h1 class="noto-sans geser"><font class="teks">Mau besi berkualitas dan termurah</font></h1>
				<h2 class="noto-sans1 mt-3"><b class=""><?php echo $website->name;?></b></h2>
				<a class="btn btn-danger btn-lg noto-sans4 mt-3" href="https://api.whatsapp.com/send?phone=+6281374624487&text=Permisi, melihat website mandiri steel. Saya ingin Memesan" role="button" target="blank">Hubungi kami sekarang</a>
			</div>
		</div>
		<div class="carousel-item active">
			<div class="tes"></div>
			<img class="d-block image awal w-100" src="<?= base_url('assets/');?>img/carousel.jpg"></img>
		</div>
	</div>
</section>
<section class="jumbotron jumbotron-fluid bg-transparent mt-5" id="TentangKami">
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-10 col-xl-5 geser">
				<img src="<?= base_url('assets/');?>img/siapa kami.jpg" class="w-100">
			</div>
			<div class="col-sm-9 col-xl-7 kotak geser1">
				<div class="card bg-danger">
					<h3 class="noto-sans2 text-white p-4"><b>Siapa kami ?</b></h3>
					<font class="nunito3 text-white lorem p-4"><?php echo substr($pages[0]->contents, 0,105) . '....';?></font>
					<a href="<?= base_url('tentang_kami');?>" class="text-white lorem ml-auto padding p-4">Selengkapnya</a>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="jumbotron jumbotron-fluid bg-transparent mt-5">
	<div class="container">
		<div class="col-xl-12 mt-5" id="keunggulan">
			<font class="noto-sans2"><b>Mengapa memilih kami?</b></font>
		</div>
		<div class="container mt-5" id="keunggulan-item">
			<div class="row text-center">
				<div class="col-xl-3 col-md-3 col-sm-12 mt-5 ml-auto">
					<div class="card">
						<div class="card-img">
							<img src="<?= base_url('assets/');?>img/Group 533.jpg" class="card-img-top img-1 mx-auto mt-4">
						</div>	
						<div class="card-body">
							<font class="nunito2 lead card-title">Pengiriman Cepat</font>
						</div>
					</div>	
				</div>
				<div class="col-xl-1 col-md-1 my-auto d-none d-sm-none d-md-block d-lg-block">
					<div class="line mx-auto align-self-center"></div>
				</div>
				<div class="col-xl-3 col-md-3 col-sm-12 mt-5">
					<div class="card">
						<div class="card-img">
							<img src="<?= base_url('assets/');?>img/Group 541.jpg" class="card-img-top img-2 mx-auto">
						</div>	
						<div class="card-body">
							<font class="nunito2 lead card-title">Kualitas Terbaik</font>
						</div>
					</div>	
				</div>
				<div class="col-xl-1 col-md-1 my-auto d-none d-sm-none d-md-block d-lg-block">
					<div class="line mx-auto align-self-center"></div>
				</div>
				<div class="col-xl-3 col-md-3 col-sm-12 mt-5 mr-auto">
					<div class="card">
						<div class="card-img">
							<img src="<?= base_url('assets/');?>img/Group 543.png" class="card-img-top img-3 mx-auto">
						</div>	
						<div class="card-body">
							<font class="nunito2 lead card-title">Harga Grosir</font>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
</section>
<section class="jumbotron jumbotron-fluid bg-" id="Produk">
	<div class="container mt-2">
		<div class="col-md-12 text-center" id="Judul">
			<font class="noto-sans2"><b>Produk</b></font>
		</div>
		<div class="col-xl-12 mt-5">
			<div class="d-none d-sm-none d-md-block d-lg-block">
				<div class="row text-center">
					<?php foreach($products as $produk) : ?>
					<div class="col-xl-3 col-md-3">
						<div class="card mb-3" style="overflow: hidden; padding: 0;">
							<img src="<?= base_url('assets/');?>product-img/<?= $produk['gambar']; ?>" style="max-height: 200px;" class="w-75 m-auto">
						</div>
					</div>
				<?php endforeach; ?>
				<?php foreach($products as $p) : ?>
					<div class="col-xl-3 col-md-3">
						<div class="card-body">
							<font class="noto-sans6"><?= $p['nama']; ?></font><br>
							<font class="nunito lead">Rp <?= $p['harga'];?></font>
						</div>
					</div>
				<?php endforeach; ?>
				</div>
			</div>
		</div>
		<!-- Daftar Produk Ukuran SM & XS -->
		<div id="carouselExample" class="carousel slide d-block d-sm-block d-md-none d-lg-none d-xl-none" data-ride="carousel">
			<div class="carousel-inner w-100">
				<div class="row">
					<?php
					$query=$this->db->query('select * from products order by product_id desc limit 1')->result();
					
					foreach($products as $produk) : ?>
					<div class="carousel-item <?php if($query[0]->product_id == $produk['product_id']){ echo "active";}?>">
						<div class="card">
							<div class="col-6 col-sm-6 center_produk" style="overflow: hidden; padding:0; display: inherit;">
								<img src="<?= base_url('assets/');?>product-img/<?= $produk['gambar'];?>" class="card-img-top w-100 autor" style="max-height: 200px">
								<div class="card-body text-center">
									<font class="noto-sans6 lead card-title"><b><?= $produk['nama'];?></b></font><br>
									<font class="nunito lead">Rp <?= $produk['harga'];?></font>
								</div>
							</div>
						</div>
					</div>
				<?php endforeach;?>
				</div>
			</div>
			<ol class="carousel-indicators mx-auto">
				<li data-target="#carouselExample" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExample" data-slide-to="1"></li>
				<li data-target="#carouselExample" data-slide-to="2"></li>
				<li data-target="#carouselExample" data-slide-to="3"></li>
			</ol>
		</div>
		<div class="col-md-12 mt-5 text-center">
			<a class="btn btn-danger text-white nunito" href="<?= base_url('list-produk');?>">Lihat semua</a>
		</div>
	</div>
</section>
<section class="jumbotron jumbotron-fluid bg-transparent" id="Komen">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<font class="noto-sans2"><b>Pendapat pelanggan kami</b></font>
			</div>
			<div class="col-md-12 mt-5">
				<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner mx-auto">
						<div class="carousel-item active">
							<div class="card mx-auto">
								<img src="<?= base_url('assets/');?>img/default.jpeg" class="rounded-circle gambar mx-auto" alt="...">
								<div class="card-body text-center">
									<div class="card-title">
										<font class="noto-sans7">Mas Tarno</font>
									</div>
									<div class="card-text">
										<font class="nunito2">Pengirimanya cepet gak pake lama, soal biaya juga terjangkau bisa pesen lewat wa, kurir sama penjualnya juga sopan banget gak nyesel beli disini </font>
									</div>
								</div>
							</div>	
						</div>
						<div class="carousel-item">
							<div class="card mx-auto">
								<img src="<?= base_url('assets/');?>img/default.jpeg" class="rounded-circle gambar mx-auto" alt="...">
								<div class="card-body text-center">
									<div class="card-title">
										<font class="noto-sans7">Pak Tresno</font>
									</div>
									<div class="card-text">
										<font class="nunito2">Yang lagi butuh barang cepet bisa pesen disini, barusan aku beli disini harganya terjangkau, gak perlu repot repot datang kesana tinggal pesen lewat wa sambil ngopi bravo</font>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="card mx-auto">
								<img src="<?= base_url('assets/');?>img/default.jpeg" class="rounded-circle gambar mx-auto" alt="...">
								<div class="card-body text-center">
									<div class="card-title">
										<font class="noto-sans7">Kang Suroto</font>
									</div>
									<div class="card-text">
										<font class="nunito2">Baru aja saya pesen udh nyampe aja, tinggal nunggu dirumah sambil ngopi barang pembelian udh dibawain, harganya juga murah gak rugi pokonya beli disini</font>
									</div>
								</div>
							</div>	
						</div>
						<div class="carousel-item">
							<div class="card mx-auto">
								<img src="<?= base_url('assets/');?>img/default.jpeg" class="rounded-circle gambar mx-auto" alt="...">
								<div class="card-body text-center">
									<div class="card-title">
										<font class="noto-sans7">Pakdhe Sumanto</font>
									</div>
									<div class="card-text">
										<font class="nunito2">Kurir sama penjualnya sopan, bisa request barang juga biayanya juga terjangkau pokonya mantab !!</font>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="d-none d-sm-none d-md-block d-lg-block">
						<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
							<svg width="24px" height="24px" viewBox="0 0 16 16" class="bi bi-chevron-left" fill="#0D0C0C" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
							</svg>
						</a>
						<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
							<svg width="24px" height="24px" viewBox="0 0 16 16" class="bi bi-chevron-right" fill="#0D0C0C" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
							</svg>
						</a>
					</div>
					<div class="d-block d-sm-block d-md-none d-lg-none d-xl-none">
						<ol class="carousel-indicators float-right">
							<li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleControls" data-slide-to="1"></li>
							<li data-target="#carouselExampleControls" data-slide-to="2"></li>
							<li data-target="#carouselExampleControls" data-slide-to="3"></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="jumbotron jumbotron-fluid bg-transparent mt-5" id="Kontak">
	<div class="container mt-5">
		<div class="row">
			<div class="col-xl-6 geser ">
				<img src="<?= base_url('assets/');?>img/bg tb mandiri.jpeg" class="w-100">
			</div>
			<div class="col-xl-5 lokasi geser">
				<div class="col-xl-12 m-auto">
					<p class="noto-sans2 font-weight-bold jarak">Lokasi</p>
					<font class="nunito2"><?= $website->address;?></font>
					<br>
					<a href="https://maps.app.goo.gl/vVKHQcpx8bdoL4ai6" target="blank" class="btn btn-danger mt-5 nunito">Lihat rute</a>
				</div>
			</div>
		</div>
	</div>
</section>

