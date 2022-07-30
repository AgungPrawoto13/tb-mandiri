<nav id="navbar_main" class="change mobile-offcanvas navbar navbar-expand-lg navbar-dark bg-dark fixed-top bg-transparent my-0"> 
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
			<li class="nav-item active beranda">
				<a class="nav-link mr-2 ml2" href="<?= base_url(); ?>" data-dismiss="collapse">Beranda <span class="sr-only">(current)</span></a>
			</li>
			<?php foreach($pages as $page) : ?>
			<li class="nav-item active1 ">
				<a class="nav-link mr-2 ml-2" href="<?= $page->slug; ?>" data-dismiss="collapse" target="<?php if($page->page_link == "https://youtu.be/CkKej0KrgkY"){ echo "blank";} else { echo "";} ?>"><?= $page->page_name; ?></a>
			</li>
		<?php endforeach; ?>
		</ul>
	</div>
</nav>
