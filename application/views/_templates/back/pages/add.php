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
                    <h4 class="card-title">Tambah Menu</h4>
                    <?= form_open_multipart("pages/save",array("id" => "formpages"),array("method" => "add"));?>
                      <div class="form-group">
                        <label for="nama">Nama menu</label>
                        <input type="text" class="form-control" id="nama" placeholder="Nama" name="nama">
                        <div class="help"></div>
                      </div>
                      <div class="form-group">
                        <label for="title">Judul</label>
                        <input type="text" class="form-control" id="title" placeholder="title" name="title">
                      </div>
                      <div class="form-group">
                        <label for="slug">Slug</label>
                        <input type="text" class="form-control" id="slug" placeholder="Link slug" name="slug">
                      </div>
                      <div class="form-group">
                        <label for="link">Link menu</label>
                        <input type="text" class="form-control" id="link" placeholder="link" name="link">
                      </div>
                      <div class="form-group">
                        <label for="content">Contents/Isi</label>
                        <textarea class="form-control froala-editor" id="content" rows="3" name="content"></textarea>
                      </div>
                      <input type="submit" class="btn btn-primary" id="submit" value="Save">
                      <input type="reset" class="btn btn-light" name="" value="Clear">
                    <?= form_close(); ?>
                  </div>
                </div>
              </div>
            </div>
            <script type="text/javascript" src="<?= base_url('assets/'); ?>app/js/pages/add.js"></script>