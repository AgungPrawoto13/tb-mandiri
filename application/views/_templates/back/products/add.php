        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
              <div class="col-12">
                <div class="page-header">
                  <h4 class="page-title">Dashboard/<?= $title; ?></h4>
                </div>
              </div>
            </div>
            <!-- Page Title Header Ends-->
            <div class="row">
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Tambah Product</h4>
                    <?= form_open_multipart("products/save",array("id" => "formproducts"),array("method" => "add"));?>
                      <div class="form-group">
                        <label for="nama">Nama Product</label>
                        <input type="text" class="form-control" id="nama" placeholder="Nama" name="nama">
                        <div class="help"></div>
                      </div>
                      <div class="form-group">
                        <label for="title">Merk</label>
                        <input type="text" class="form-control" id="Merk" placeholder="Merk product" name="merk">
                      </div>
                      <div class="form-group">
                        <label for="harga">Harga</label>
                        <input type="text" class="form-control" id="harga" placeholder="Harga" name="harga">
                      </div>
                      <div class="form-group">
                        <label for="content">Contents/Isi</label>
                        <textarea class="form-control froala-editor" id="deskripsi" rows="3" name="deskripsi"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="link">Gambar</label>
                        <input type="file" class="form-control" id="img" placeholder="upload gambar" name="img">
                      </div>
                      <input type="submit" class="btn btn-primary" id="submit" value="Save">
                      <input type="reset" class="btn btn-light" name="" value="Clear">
                    <?= form_close(); ?>
                  </div>
                </div>
              </div>
            </div>
            <script type="text/javascript" src="<?= base_url('assets/'); ?>app/js/products/add.js"></script>