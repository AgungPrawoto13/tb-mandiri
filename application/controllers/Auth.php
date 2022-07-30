<?php defined('BASEPATH') OR exit('No redirect script access allowed');
class Auth extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Master_model','master');

	}
	public function output_json($data, $encode = true){
		if($encode) $data = json_encode($data);
		$this->output->set_content_type('application/json')->set_output($data);
	}
	public function index(){
		if($this->session->userdata('email')){
			redirect('dashboard');
		}
		$data['msg'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('msg');
		$this->load->view('_templates/back/login', $data);
	}

	public function login(){
		$this->form_validation->set_rules('email','email','required|trim|valid_email',[
			'required' => 'email wajib di isi',
			'valid_email' => 'email tidak valid']);
		$this->form_validation->set_rules('password','Password','required|trim',[
			'required' => 'Password tidak boleh kosong']);
		if($this->form_validation->run() === TRUE){
			$email = htmlspecialchars($this->input->post('email',true), ENT_QUOTES);
			$password = htmlspecialchars($this->input->post('password', true), ENT_QUOTES);
			$cek = $this->master->cekUsers(['email' => $email]);
			
			if($cek->num_rows() > 0){
				$user = $cek->row_array();
				if($password == $user['password']){
					$data = [
						'nama' => $user['name'],
						'email' => $user['email']
					];
					$this->session->set_userdata($data);
					
					$json = [
						'status' => TRUE,
						'url' => 'dashboard'
					];
					$this->output_json($json);
				}else{
					$data = [
						'status' => FALSE,
						'failed' => 'Password Salah !',
						'url' => 'auth'
					];
					$this->output_json($data);
				}
			}else{
				$data = [
					'status' => FALSE,
					'failed' => 'Email Salah !',
					'url' => 'auth'
				];
				$this->output_json($data);
			}
		}else{
			$invalid = [
				'email' => form_error('email'),
				'password' => form_error('password')
			];
			$data = [
				'status' => FALSE,
				'invalid' => $invalid
			];
			$this->output_json($data);
		}
	}

	public function logout(){
		$this->session->unset_userdata(['email','nama']);
		$this->session->sess_destroy();
		redirect('auth','refresh');

	}
}