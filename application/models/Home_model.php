<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Home_model extends CI_Model{

	public function web(){
		return $this->db->get('website')->row();
	}
	public function pages(){
		return $this->db->get('pages')->result();
	}
	public function testimoni(){
		return $this->db->get('testimoni')->result();
	}
}