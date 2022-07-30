
	<div class="container-fluid">
		<div class="row mt-5 text-center" id="products">
			<?php foreach ($products as $product) : ?>
					<div class="col-9 col-sm-5 col-xl-3 mt-5 center">
						<div class="card" style="overflow: hidden; padding: 0;">
							<a href="<?= base_url('produk/'.$product->product_id);?>">
								<img src="<?= base_url('assets/product-img/') . $product->gambar;?>" style="max-height: 200px;">
								<br>
								<div class="col-xl-12 mt-3">
									<div class="col-xl-11">
										<font class="noto-sans6"><?php echo $product->nama;?></font>
									</div>
								</div>
								<div class="col-xl-12">
									<div class="col-xl-11">
										<font class="nunito">Rp <?php echo $product->harga;?></font>
									</div>
								</div>
							</a>
						</div>
					</div>
			<?php endforeach; ?>
		</div>
	</div>