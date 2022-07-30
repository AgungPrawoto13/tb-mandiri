<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Web extends CI_Controller{
	public function __construct(){
		parent::__construct();
		if(!$this->session->email){
			redirect('auth');
		}
		$this->load->library('datatables');
		$this->load->model(['Web_model' => 'web','Master_model' => 'master']);
	}
	public function output_json($data, $encode = true){
		if($encode) $data = json_encode($data);
		$this->output->set_content_type('application/json')->set_output($data);
	}

	public function index(){
		$data = [
			'title' => 'Website info',
			'user' => $this->session,
			'content' => 'web/index',
			'info' => $this->web->getInfo()
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function edit($id){
		$data = [
			'title' => 'Info edit',
			'user' => $this->session,
			'content' => 'web/edit',
			'info' => $this->web->editInfo($id)
		];

		$this->load->view('_templates/back/index', $data);
	}
	public function file_config(){
		$config['upload_path']      = FCPATH.'assets/img/';
        $config['allowed_types']    = 'jpeg|jpg|png|gif';
        $config['encrypt_name']     = TRUE;
        
        return $this->load->library('upload', $config);
	}
	public function validation($rules, $error = []){
		$this->form_validation->set_rules('nama','nama menu',$rules, $error);
		$this->form_validation->set_rules('judul','judul', $rules, $error);
		$this->form_validation->set_rules('alm','alamat', $rules, $error);
		$this->form_validation->set_rules('wa', 'Nomor Handphone', $rules, $error);
	}
	public function save(){
		$title = $this->input->post('judul');
		$name = $this->input->post('nama');
		$alm = $this->input->post('alm');
		$wa = $this->input->post('wa');
		$phone = $this->input->post('phone2');
		$email = $this->input->post('email');
		$method = $this->input->post('method');

		$this->validation('required|trim|min_length[4]');
		if($this->form_validation->run() === FALSE){
			$data = [
				'status' => false,
				'errors' => [
					'nama' => form_error('nama'),
					'judul' => form_error('judul'),
					'address' => form_error('alm'),
					'wa' => form_error('wa'),
					'email' => form_error('mail')
				]
			];
			$this->output_json($data);
		}else{
			$this->file_config();
			$id = $this->input->post('id');
			$gambar = $this->db->get_Where('website',['id' => $id])->result();

			$data = [
				'title' => $title,
				'name' => $name,
				'address' => $alm,
				'phone1' => $wa,
				'phone2' => $phone,
				'email' => $email
			];

			$src = FCPATH.'assets/img/';
			// print_r($_FILES);die();
			if(!empty($_FILES['file_icon']['name'])){
				if(!$this->upload->do_upload('file_icon')){
					$error = $this->upload->display_errors('*',' !');
					$this->output_json(['status' => false,
										'errors' => ['file_icon' => $error]]);
				}else{
					$data['icon'] = $this->upload->data('file_name');
					
					$id = $this->input->post('id');
					@unlink($src.$gambar[0]->icon);
					$action = $this->master->update('website',$data,'id',$id);
				}
				$this->output_json(['status'=>true]);
			}else{

				$id=$this->input->post('id');
				$action = $this->master->update('website',$data,'id',$id);
				$this->output_json($action,['status'=>true]);
			}
		}
	}
}