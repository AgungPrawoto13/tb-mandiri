<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Home extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model(['Home_model' => 'home','Web_model' => 'info','Products_model' => 'produk']);

	}

	public function index(){
		$data = [
			'title' => 'TB MANDIRI',
			'subtitle' => 'Toko Besi Mandiri',
			'pages' => $this->home->pages(),
			'content' => 'landing_page',
			'testimoni' => $this->home->testimoni(),
			'website' => $this->home->web(),
			'products' => $this->produk->getData(),
		];

		$this->load->view('index',$data);
	}
	public function tentang_kami(){
		$data = [
			'title' => 'TB MANDIRI',
			'subtitle' => 'Toko Besi Mandiri',
			'pages' => $this->home->pages(),
			'content' => 'about_us',
			'website' => $this->home->web()
		];

		$this->load->view('about_us',$data);
		$this->load->view('_templates/footer');
	}
	public function kontak(){
		$data = [
			'title' => 'TB MANDIRI',
			'subtitle' => 'Toko Besi Mandiri',
			'pages' => $this->home->pages(),
			'content' => 'contact_us',
			'contact' => $this->info->getInfo(),
			'website' => $this->home->web()
		];

		$this->load->view('contact_us',$data);
		$this->load->view('_templates/footer');
	}
	
}
