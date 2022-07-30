<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top darkHeader my-0"> 
	<a class="navbar-brand" href="#"><img src="<?= base_url('assets/img/'.$website->icon);?>" class="ml-5 w-75"></a>
	<button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav ml-auto mr-5 nunito">
			<li class="nav-item active">
				<a class="nav-link mr-4 text-white" href="<?= base_url(); ?>" data-dismiss="collapse">Beranda <span class="sr-only">(current)</span></a>
			</li>
			<?php foreach($pages as $page) : ?>
			<li class="nav-item">
				<a class="nav-link mr-4 text-white" href="<?= base_url($page->page_link); ?>" data-dismiss="collapse"><?= $page->page_name; ?></a>
			</li>
			<?php endforeach; ?>
		</ul>
	</div>
</nav>