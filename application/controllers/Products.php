<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Products extends CI_Controller{
	public function __construct(){
		parent::__construct();
		if(!$this->session->email){
			redirect('auth');
		}
		$this->load->library('datatables');
		$this->load->model(['Master_model' => 'master','Products_model' => 'product']);
	}
	public function output_json($data, $encode = true){
		if($encode) $data = json_encode($data);
		$this->output->set_content_type('application/json')->set_output($data);
	}

	public function index(){
		$data = [
			'title' => 'Products',
			'user' => $this->session,
			'content' => 'products/index'
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function data(){
		$this->output_json($this->product->listProducts(), false);
	}
	public function add(){
		$data = [
			'title' => 'Tambah Product',
			'user' => $this->session,
			'content' => 'products/add'
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function edit($id){
		$data = [
			'title' => 'Edit Menu',
			'user' => $this->session,
			'content' => 'products/edit',
			'data' => $this->product->getProduct($id)
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function validation($rules, $error = []){
		$this->form_validation->set_rules('nama','nama product',$rules, $error);
		$this->form_validation->set_rules('merk','merk', $rules, $error);
	}

	public function file_config(){
		$config['upload_path']      = FCPATH.'assets/product-img/';
        $config['allowed_types']    = 'jpeg|jpg|png|gif';
        $config['encrypt_name']     = TRUE;
        
        return $this->load->library('upload', $config);
	}
	public function save(){

		$method = $this->input->post('method');
		$name = $this->input->post('nama');
		$merk = $this->input->post('merk');
		$harga = $this->input->post('harga');
		$desc = $this->input->post('deskripsi');

		if($method === 'add'){
			$this->validation('required|min_length[4]|trim|is_unique[products.nama]|is_unique[products.merk]',['is_unique' => '%s sudah ada !']);
		}elseif($method === 'edit'){
			$this->validation('required|min_length[4]|trim');
		}
		if($this->form_validation->run() === FALSE){
			$data = [
			'status' => false,
			'errors' => [
				'nama' => form_error('nama'),
				'merk' => form_error('merk'),
				'harga' => form_error('harga'),
				'img' => form_error('img')
				]
			];
			$this->output_json($data);
		}else{
			$this->file_config();
			$id = $this->input->post('id');
			$gambar = $this->db->get_Where('products',['product_id' => $id])->result();
			$data = [
				'nama' => $name,
				'merk' => $merk,
				'harga' => $harga,
				'deskripsi' => $desc
			];
			$src = FCPATH.'assets/product-img/';

			if(!empty($_FILES['img']['name'])){
				if(!$this->upload->do_upload('img')){
					$error = $this->upload->display_errors('*',' !');
					$this->output_json(['status' => false,
										'errors' => ['img' => $error]]);
				}else{
					$data['gambar'] = $this->upload->data('file_name');
					if($method === 'add'){
						$action = $this->master->create('products',$data);
					}elseif($method === 'edit'){
						$id = $this->input->post('id');
						@unlink($src.$gambar[0]->gambar);
						$action = $this->master->update('products',$data,'product_id',$id);
					}
					$this->output_json(['status' => true]);
				}
			}else{

				if($method === 'add'){

					$action = $this->master->create('product',$data);
				}elseif($method === 'edit'){
					$id = $this->input->post('id');
					$action = $this->master->update('products',$data,'product_id',$id);
				}
			$this->output_json(['status' => true]);
			}
		}
	}
	public function delete(){
		$chk = $this->input->post('checked', true);
		if (!$chk) {
			$this->output_json(['status' => false]);
		} else {
			if ($this->master->delete('products', $chk, 'product_id')) {
				$this->output_json(['status' => true, 'total' => count($chk)]);
			}
		}
	}
}