<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<title><?php echo $website->title;?></title>
	<link rel="shortcut icon" href="<?= base_url('assets/');?>img/<?php echo $website->icon;?>">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/bootstrap/css/style.css?v=1.0">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/bootstrap/css/all.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/fontawesome/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/');?>vendor/fontawesome/all.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/fontawesome/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/bootstrap/css/AdminLTE.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/vendor/bootstrap/css/blue.css">
	<script src="<?= base_url('assets/');?>vendor/bootstrap/js/jquery.js"></script>
	<script src="<?= base_url('assets/');?>vendor/bootstrap/js/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" rel="stylesheet">
</head>
<body>
	<?php (base_url(uri_string()) == base_url()) ? $this->load->view('_templates/navhome') : $this->load->view('_templates/navlink') ; ?>
	