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
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">List menu homepage</h4>
                    <a href="<?= base_url('pages/add') ?>" class="btn btn-sm btn-info shadow-sm"><i class="fa fa-plus"></i> Tambah Data</a>
                    <button type="button" onclick="reload_ajax()" class="btn btn-sm btn-primary shadow-sm"><i class="fa fa-refresh"></i> Reload</button>
                    <div class="float-right">
                        <button onclick="bulk_delete()" class="btn btn-sm btn-danger shadow-sm" type="button"><i class="fa fa-trash"></i> Delete</button>
                    </div>
                    <div class="table table-responsive">
                      <?= form_open('pages/delete', array('id' => 'bulk')) ?>
                      <table class="table table-striped table-hover table-bordered" id="pages">
                        <thead>
                          <tr>
                            <th> NO. </th>
                            <th> Nama menu </th>
                            <th> judul </th>
                            <th> Slug </th>
                            <th> link menu </th>
                            <th> konten/isi </th>
                            <th class="text-center">Action</th>
                            <th class="text-center">
                              <input type="checkbox" class="select_all">
                            </th>
                          </tr>
                        </thead>
                        <tbody></tbody>
                      </table>
                      <?= form_close(); ?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
<script type="text/javascript" src="<?= base_url(); ?>assets/app/js/pages/data.js"></script>          
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->