<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Products_list extends CI_Controller{
	public $perPage = 4;
	public function __construct(){
		parent::__construct();
		$this->load->model(['Prodlist_model' => 'produk','Home_model' => 'home']);
		$this->load->model('Products_model');
	}
	public function index(){

		$data = [
			'title' => 'TB MANDIRI',
			'subtitle' => 'Toko Besi Mandiri',
			'pages' => $this->home->pages(),
			'website' => $this->home->web()
		];
		$totalProducts = $this->produk->productsCount();
		$data['totalPages'] = ceil($totalProducts/$this->perPage);

		if(!empty($this->input->get("page"))){
			$start = $this->perPage * $this->input->get('page');
			$data['products'] = $this->produk->getProducts($this->perPage, $start);
			$this->load->view('ajax_product',$data);
		}else{
			$start = 0;
			$data['products'] = $this->produk->getProducts($this->perPage, $start);
			// $this->load->view('_templates/header',$data); 
			$this->load->view('list_products',$data);
			$this->load->view('_templates/footer');
		}
	}
	public function detail($id){
		$data = [
			'title' => 'TB MANDIRI',
			'subtitle' => 'Toko Besi Mandiri',
			'pages' => $this->home->pages(),
			'website' => $this->home->web(),
			'product' => $this->produk->getProduct($id),
			'produk_lainya' => $this->Products_model->semuaProduk(),
			'content' => 'detail_product'
		];

		$this->load->view('detail_product',$data);
		$this->load->view('_templates/footer');
	}
}