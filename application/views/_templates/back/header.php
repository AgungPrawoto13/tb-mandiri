<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?= $title; ?></title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>vendors/iconfonts/ionicons/dist/css/ionicons.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>vendors/iconfonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>vendors/froala_editor/css/froala_editor.pkgd.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>vendors/froala_editor/css/froala_style.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>vendors/froala_editor/css/themes/royal.min.css">
    <script type="text/javascript" src="<?= base_url('assets/template/back/'); ?>vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript">
      let base_url = '<?= base_url(); ?>';
    </script>
    
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>css/shared/style.css">
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="<?= base_url('assets/template/back/'); ?>css/demo_1/style.css">
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="<?= base_url('assets/template/back/'); ?>images/favicon.ico" />
  </head>
  <?php 
  $this->load->view('_templates/back/navbar');
  $this->load->view('_templates/back/sidebar');