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
                    <h4 class="card-title text-center">Edit Admin</h4>
                    <?= form_open_multipart("admin/save",array("id" => "formadmin"),array("method" => "edit","id" => $info['id_user']));?>
                      <div class="form-group">
                        <label for="nama">Nama</label>
                        <input type="text" class="form-control" id="nama" placeholder="Nama" name="nama" value="<?= $info['name']; ?>">
                      </div>
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" placeholder="email" name="email" value="<?= $info['email']; ?>">
                      </div>
                      <div class="form-group">
                        <label for="password">Password</label>
                        <input type="text" class="form-control" id="password" placeholder="Password" name="password">
                      </div>
                      <input type="submit" class="btn btn-primary" id="submit" value="Save">
                      <input type="reset" class="btn btn-light" name="" value="Clear">
                    <?= form_close(); ?>
                  </div>
                </div>
              </div>
            </div>