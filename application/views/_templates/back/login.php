<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Login</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<?= base_url('assets/template/back'); ?>/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back'); ?>/vendors/iconfonts/ionicons/dist/css/ionicons.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back'); ?>/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back'); ?>/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back'); ?>/vendors/css/vendor.bundle.addons.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<?= base_url('assets/template/back'); ?>/css/shared/style.css">
    <link rel="stylesheet" href="<?= base_url('assets/app/css'); ?>/login.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="<?= base_url('assets/template/back'); ?>/images/favicon.ico" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
          <div class="row" style="width: 120% !important;">
            <div class="col-lg-4 mx-auto">
              <div class="auto-form-wrapper">
                <div id="infoMessage" class="text-center"><?php echo $msg;?></div>
                <?= form_open("auth/login",['id' => 'login']); ?>
                  <div class="form-group">
                    <label class="label">Email</label>
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Email" name="email" id="email">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="label">Password</label>
                    <div class="input-group">
                      <input type="password" class="form-control" placeholder="*********" name="password" id="password">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <input type="submit" class="btn btn-primary submit-btn btn-block" id="submit" value="submit">
                  </div>
                  <div class="form-group d-flex justify-content-between">
                    <div class="form-check form-check-flat mt-0">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" checked> Keep me signed in </label>
                    </div>
                    <a href="#" class="text-small forgot-password text-black">Forgot Password</a>
                  </div>
                  <div class="form-group">
                    <button class="btn btn-block g-login">
                      <img class="mr-3" src="<?= base_url('assets/template/back'); ?>/images/file-icons/icon-google.svg" alt="">Log in with Google</button>
                  </div>
                <?= form_close(); ?>
              </div>
              <ul class="auth-footer">
                <li>
                  <a href="#">Conditions</a>
                </li>
                <li>
                  <a href="#">Help</a>
                </li>
                <li>
                  <a href="#">Terms</a>
                </li>
              </ul>
              <p class="footer-text text-center">copyright © <script>document.write(new Date().getFullYear())</script> TB Mandiri. All rights reserved.</p>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script type="text/javascript">
      let base_url = '<?= base_url(); ?>';
    </script>
    <script src="<?= base_url('assets/template/back'); ?>/vendors/js/vendor.bundle.base.js"></script>
    <script src="<?= base_url('assets/template/back'); ?>/vendors/js/vendor.bundle.addons.js"></script>
    <script src="<?= base_url('assets/app/js/'); ?>login.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="<?= base_url('assets/template/back'); ?>/js/shared/off-canvas.js"></script>
    <script src="<?= base_url('assets/template/back'); ?>/js/shared/misc.js"></script>
    <!-- endinject -->
  </body>
</html>