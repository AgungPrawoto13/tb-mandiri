<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Pages extends CI_Controller{
	public function __construct(){
		parent::__construct();
		if(!$this->session->email){
			redirect('auth');
		}
		$this->load->library('datatables');
		$this->load->model(['Pages_model' => 'pages','Master_model' => 'master']);

	}

	public function output_json($data, $encode = true){
		if($encode) $data = json_encode($data);
		$this->output->set_content_type('application/json')->set_output($data);
	}

	public function index(){
		$data = [
			'title' => 'Pages',
			'user' => $this->session,
			'content' => 'pages/index'
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function data(){
		$this->output_json($this->pages->listMenu(), false);
	}

	public function add(){
		$data = [
			'title' => 'Tambah Menu',
			'user' => $this->session,
			'content' => 'pages/add'
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function edit($id){
		$data = [
			'title' => 'Edit Menu',
			'user' => $this->session,
			'content' => 'pages/edit',
			'data' => $this->pages->getPage($id)
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function validation($rules, $error = []){
		$this->form_validation->set_rules('nama','nama menu',$rules, $error);
		$this->form_validation->set_rules('title','judul', $rules, $error);
	}

	public function save(){

		$method = $this->input->post('method');
		$name = $this->input->post('nama');
		$judul = $this->input->post('title');
		$slug = $this->input->post('slug');
		$link = $this->input->post('link');
		$content = $this->input->post('content');

		if($method === 'add'){
			$this->validation('required|min_length[4]|trim|is_unique[pages.page_name]|is_unique[pages.title]',['is_unique' => '%s sudah ada !']);
		}elseif($method === 'edit'){
			$this->validation('required|min_length[4]|trim');
		}
		if($this->form_validation->run() === FALSE){
			$data = [
			'status' => false,
			'errors' => [
				'nama' => form_error('nama'),
				'title' => form_error('title'),
				'slug' => form_error('slug'),
				'link' => form_error('link')
				]
			];
			$this->output_json($data);
		}else{

			$data = [
				'page_name' => $name,
				'title' => $judul,
				'slug' => $slug,
				'page_link' => $link,
				'contents' => $content
			];
			if($method === 'add'){
				$this->master->create('pages',$data);
			}elseif($method === 'edit'){
				$id = $this->input->post('id');
				$this->master->update('pages',$data,'page_id',$id);
			}
			$this->output_json(['status' => TRUE]);
		}
	}

	public function delete(){
		$chk = $this->input->post('checked', true);
		if (!$chk) {
			$this->output_json(['status' => false]);
		} else {
			if ($this->master->delete('pages', $chk, 'page_id')) {
				$this->output_json(['status' => true, 'total' => count($chk)]);
			}
		}
	}
}