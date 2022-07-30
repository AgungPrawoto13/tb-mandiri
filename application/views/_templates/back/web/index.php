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
              <div class="col-md-10 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title text-center">Info Website</h4>
                    <div class="table table-responsive">
                      <table class="table table-bordered" id="web">
                        <tbody>
                          <?php foreach($info as $web) : ?>
                            <tr>
                              <th width="10px">Icon</th>
                                <td>
                                  <img src="<?= base_url('assets/img/'.$web->icon);?>" class="img">
                                </td>
                            </tr>
                            <tr>
                              <th>Title</th>
                                <td><?= $web->title; ?></td>
                            </tr>
                            <tr>
                              <th> Nama web</th>
                                <td><?= $web->name; ?></td>
                            </tr>
                            <tr>
                              <th>Description</th>
                                <td><?= $web->description; ?></td>
                            </tr>
                            <tr>
                              <th>Address</th>
                                <td><?= $web->address; ?></td>
                            </tr>
                            <tr>
                              <th>Phone/WA</th>
                                <td><?= $web->phone1; ?></td>
                            </tr>
                            <tr>
                              <th>Phone (Opsional)</th>
                                <td><?= $web->phone2; ?></td>
                            </tr>
                          <?php endforeach; ?>
                        </tbody>
                      </table>
                    </div>
                    <center><br>
                    <a class="btn btn-primary btn-sm shadow" href="<?= base_url('web/edit/'.$info[0]->id); ?>">Edit</a>
                    </center>
                  </div>
                </div>
              </div>
            </div>
          </div>         
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->