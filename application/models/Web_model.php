<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Web_model extends CI_Model{
	public function getInfo(){
		return $this->db->get('website')->result();
	}
	
	public function editInfo($id){
		return $this->db->get_where('website',['id' => $id])->row_array();
	}
}