<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Admin extends CI_Controller{
	public function __construct(){
		parent::__construct();
		if(!$this->session->email){
			redirect('auth');
		}
		$this->load->model(['Admin_model' => 'admin','Master_model' => 'master']);
	}
	public function output_json($data, $encode = true){
		if($encode) $data = json_encode($data);
		$this->output->set_content_type('application/json')->set_output($data);
	}

	public function index(){
		$data = [
			'title' => 'Admin info',
			'user' => $this->session,
			'content' => 'admin/index',
			'info' => $this->admin->getInfo()
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function edit($id){
		$data = [
			'title' => 'Info edit',
			'user' => $this->session,
			'content' => 'admin/edit',
			'info' => $this->admin->editInfo($id)
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function validation($rules, $error = []){
		$this->form_validation->set_rules('nama','nama menu',$rules, $error);
		$this->form_validation->set_rules('email','email', $rules, $error);
	}
	public function save(){
		$name = $this->input->post('nama');
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$this->validation('required|trim|min_length[4]');
		$this->form_validation->set_rules('password','password', 'required|trim|min_length[8]');
		if($this->form_validation->run() === FALSE){
			$data = [
				'status' => false,
				'errors' => [
					'nama' => form_error('nama'),
					'judul' => form_error('email'),
					'address' => form_error('password')
				]
			];
			$this->output_json($data);
		}else{

			$data = [
				'name' => $name,
				'email' => $email,
				'password' => password_hash($password, PASSWORD_DEFAULT),
			];
			$this->master->update('users',$data,'id_user',$this->input->post('id'));
			$this->output_json(['status' => true]);
		}

	}
}