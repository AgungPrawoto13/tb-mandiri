<footer class="jumbotron jumbotron-fluid my-0 mt-5 bg-dark text-white">
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-md-3 col-sm-3 col-xs-12 text-center">
				<a href="<?= base_url();?>" class="text-white nunito5"><b>Beranda</b></a>
			</div>
			<div class="col-xl-3 col-md-3 col-sm-3 col-xs-12 text-center">
				<a href="<?= base_url('tentang_kami');?>" class="text-white nunito5"><b>Tentang kami</b></a>
			</div>
			<div class="col-xl-3 col-md-3 col-sm-3 col-xs-12 text-center">
				<a href="<?= base_url('list-produk');?>" class="text-white nunito5"><b>Produk</b></a>
			</div>
			<div class="col-xl-3 col-md-3 col-sm-3 col-xs-12 text-center">
				<a href="<?= base_url('kontak');?>" class="text-white nunito5"><b>Kontak</b></a>
			</div>
			<div class="col-xl-12 mt-2 mb-3 d-none d-sm-block">
				<hr class="lead my-4 bg-light">
			</div>
			<!-- Footer Mobile -->
			<div class="col-sm-12 col-xs-12 d-block d-sm-none" id="Alamat">
			    <a href="https://mail.google.com/mail/u/0/?tab=wm&ogbl#inbox?compose=CllgCHrjDqLwFNqkTjMgWwTDrsgdMJhGPpFpBrJBNBxSVDxrXzJBDQXGlzwnClGqCsRtfXklJwL" target="blank" class="text-white">
    				<i class="fas fa-envelope"></i>
    				<div class="nunito4"><?php echo $website->email;?></div>
    			</a>
			</div>
			<div class="col-sm-12 col-xs-12 d-block d-sm-none" id="Alamat">
			    <a href="https://www.facebook.com/mandiri.steel.142" target="blank" class="text-white">
    				<i class="fab fa-facebook-square"></i>
    				<div class="nunito4"><?php echo $website->fb;?></div>
    			</a>
			</div>
    		<div class="col-xs-12 text-center mx-auto d-block d-sm-none" id="Alamat">
    		    <a href="https://api.whatsapp.com/send?phone=+6281374624487&text=Permisi, melihat website mandiri steel. Saya ingin Memesan" target="blank" class="text-white">
    				<i class="fas fa-phone-alt"></i>
    				<div class="nunito4"><?php echo $website->phone1;?> / <?php echo $website->phone2;?></div> 
    		    </a>
    		</div>
    		<div class="col-sm-12 col-xs-12 d-block d-sm-none" id="Alamat">
    			<a href="https://maps.app.goo.gl/vVKHQcpx8bdoL4ai6" target="blank" class="text-white">	
    				<i class="fas fa-map-marker-alt"></i>
    				<div class="nunito4"><?php echo $website->address;?></div>
    		    </a>
    		</div>
			<div class="col-sm-4 col-xs-4 d-block d-sm-none" id="yt">
				<div class="form-group tengah">
					<span class="nunito5">Kunjungi kami di</span>
					<a href="https://www.youtube.com/watch?v=CkKej0KrgkY&feature=youtu.be" target="blank">
						<div class="input-group flex-nowrap mt-2">
							<div class="input-group-prepend">
								<span class="input-group-text">
									<img src="<?= base_url('assets/');?>img/Group 585.png" class="w-100">
								</span>
							</div>
							<button class="form-control nunito6">@Toko Besi Mandiri</button>
						</div>
					</a>
				</div>
			</div>

			<!-- Footer Desktop -->
			<div class="col-xl-9 col-md-4 col-sm-6 col-xs-12 d-none d-sm-block">
    			<a href="https://maps.app.goo.gl/vVKHQcpx8bdoL4ai6" target="blank" class="text-white">	
    				<div class="form-group col-sm-12">
    					<i class="fas fa-map-marker-alt"></i>
    					<br>
    					<span class="nunito4"><?php echo $website->address;?></span>
    				</div>
    			</a>
    			<a href="https://api.whatsapp.com/send?phone=+6281374624487&text=Permisi, melihat website mandiri steel. Saya ingin Memesan" target="blank" class="text-white">
    				<div class="form-group col-sm-12">
    					<i class="fas fa-phone-alt"></i>
    					<span class="nunito4 mt-2 mr-4"><?php echo $website->phone1;?> / <?php echo $website->phone2;?></span> 
    				</div>
    			</a>
    			<a href="https://mail.google.com/mail/u/0/?tab=wm&ogbl#inbox?compose=CllgCHrjDqLwFNqkTjMgWwTDrsgdMJhGPpFpBrJBNBxSVDxrXzJBDQXGlzwnClGqCsRtfXklJwL" target="blank" class="text-white">
    				<div class="form-group col-sm-12">
    					<i class="fas fa-envelope"></i>
    					<span class="nunito4"><?php echo $website->email;?></span>
    				</div>
    			</a>
    			<a href="https://www.facebook.com/mandiri.steel.142" target="blank" class="text-white">
    				<div class="form-group col-sm-12">
    					<i class="fab fa-facebook-square"></i>
    					<span class="nunito4"><?php echo $website->fb;?></span>
    				</div>
    			</a>
			</div>
			<div class="kanan ml-5 col-xl-2 col-md-2 text-center d-none d-sm-block" id="fu">
				<div class="form-group tengah">
					<span class="nunito5">Kunjungi kami di</span>
					<a href="https://www.youtube.com/watch?v=CkKej0KrgkY&feature=youtu.be" target="blank">
						<div class="input-group flex-nowrap mt-2">
							<div class="input-group-prepend">
								<span class="input-group-text">
									<img src="<?= base_url('assets/');?>img/Group 585.png" class="w-100">
								</span>
							</div>
							<button class="form-control nunito6">@Toko Besi Mandiri</button>
						</div>
					</a>
				</div>
			</div>
			<div class="col-xl-12 mt-3 mb-3 d-none d-sm-block">
				<hr class="lead my-4 bg-light">
			</div>
			<div class="col-xl-12 text-center" id="cr">
				<span class="nunito5">Copyright &copy Tbmandiri 2020 Allright Reserved</span>
			</div>
		</div>
	</div>
</footer>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">

<script src="<?= base_url('assets/');?>js/jquery-3.5.1.slim.min.js"></script>
<script src="<?= base_url('assets/');?>js/popper.min.js"></script>
<script src="<?= base_url('assets/');?>js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/8fd9820964.js" crossorigin="anonymous"></script>
<script type="text/javascript">

	//membuat efek garis pada navbar
	$(".nav-item").click(function(event){
		$(".nav-item").removeClass("active a");
		$(this).addClass("active a");
		$(".navbar-collapse").removeClass("show");
		$("body").removeClass("offcanvas-active");
	})

	// Navbar scroll
	$(window).on('scroll', function() {
		if ($(window).scrollTop()) {
			$('.change').addClass('black');
		} else {
			$('.change').removeClass('black');
		}
	})

	// Navbar Mobile Full display
	$(function () {
	  'use strict'

		$("[data-trigger]").on("click", function(){
			var trigger_id =  $(this).attr('data-trigger');
			$(trigger_id).toggleClass("show");
			$('body').toggleClass("offcanvas-active");
		});

		// close if press ESC button 
		$(document).on('keydown', function(event) {
			if(event.keyCode === 27) {
			$(".navbar-collapse").removeClass("show");
			$("body").removeClass("overlay-active");
			}
		});

		// close button 
		$(".btn-close").click(function(e){
			$(".navbar-collapse").removeClass("show");
			$("body").removeClass("offcanvas-active");
		});
	})
</script>
</body>
</html>