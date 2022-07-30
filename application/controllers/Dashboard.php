<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Dashboard extends CI_Controller{
	public function __construct(){
		parent::__construct();
		if(!$this->session->email){
			redirect('auth');
		}
	}

	public function index(){
		// $data = [
		// 	'title' => 'Dashboard',
		// 	'user' => $this->session,
		// 	'content' => 'products/index'
		// ];
		// $this->load->view('_templates/back/index',$data);
		redirect('products');
	}
	public function pages(){
		$data = [
			'title' => 'Dashboard',
			'user' => $this->session,
			'content' => 'pages/index'
		];
		$this->load->view('_templates/back/index',$data);
	}
}