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
              <div class="col-md-5 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title text-center">Info Admin</h4>
                    <div class="table table-responsive">
                      <table class="table table-bordered" id="admin">
                        <tbody>
                          <?php foreach($info as $user) : ?>
                            <tr>
                              <th>Nama</th>
                                <td><?= $user->name; ?></td>
                            </tr>
                            <tr>
                              <th>Email</th>
                                <td><?= $user->email; ?></td>
                            </tr>
                            <tr>
                              <th>Password</th>
                                <td>*********</td>
                            </tr>
                          <?php endforeach; ?>
                        </tbody>
                      </table>
                    </div>
                    <center><br>
                    <a class="btn btn-primary btn-sm shadow" href="<?= base_url('admin/edit/'.$info[0]->id_user); ?>">Edit</a>
                    </center>
                  </div>
                </div>
              </div>
            </div>
          </div>   
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->