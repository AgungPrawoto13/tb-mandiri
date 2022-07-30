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
                    <h4 class="card-title text-center">Edit info Website</h4>
                    <?= form_open_multipart("web/save",array("id" => "formweb"),array("method" => "edit","id" => $info['id']));?>
                      <div class="form-group">
                        <label for="icon">Icon :</label><br>
                        <div class="col-xl-6 m-auto">
                          <img src="<?= base_url('assets/img/'.$info['icon']); ?>" class="img img-rounded w-100">
                        </div>
                        <input type="file" class="form-control" id="icon" placeholder="Nama" name="file_icon">
                        <div class="help"></div>
                      </div>
                      <div class="form-group">
                        <label for="title">Judul</label>
                        <input type="text" class="form-control" id="judul" placeholder="judul" name="judul" value="<?= $info['title']; ?>">
                      </div>
                      <div class="form-group">
                        <label for="slug">Nama</label>
                        <input type="text" class="form-control" id="nama" placeholder="Nama Website" name="nama" value="<?= $info['name']; ?>">
                      </div>
                      <div class="form-group">
                        <label for="link">Address</label>
                        <input type="text" class="form-control" id="alm" placeholder="alamat" name="alm" value="<?= $info['address']; ?>">
                      </div>
                      <div class="form-group">
                        <label for="link">Phone/WA</label>
                        <input type="text" class="form-control" id="wa" placeholder="Nomor Hp/WA" name="wa" value="<?= $info['phone1']; ?>">
                      </div>
                      <div class="form-group">
                        <label for="link">Phone2 (Opsional)</label>
                        <input type="text" class="form-control" id="phone2" placeholder="Nomor Opsional" name="phone2" value="<?= $info['phone2']; ?>">
                      </div>
                      <div class="form-group">
                        <label for="link">Email</label>
                        <input class="form-control" type="text" id="mail" placeholder="Email" name="email" value="<?= $info['email'];?>"></input>
                      </div>
                      <div class="form-group">
                        <label for="content">Description</label>
                        <textarea class="form-control froala-editor" id="content" rows="3" name="content"><?= $info['description']; ?></textarea>
                      </div>
                      <input type="submit" class="btn btn-primary" id="submit" value="Save">
                      <input type="reset" class="btn btn-light" name="" value="Clear">
                    <?= form_close(); ?>
                  </div>
                </div>
              </div>
            </div>