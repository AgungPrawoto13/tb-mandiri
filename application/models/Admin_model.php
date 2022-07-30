<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Admin_model extends CI_Model{
	public function getInfo(){
		return $this->db->get('users')->result();
	}
	
	public function editInfo($id){
		return $this->db->get_where('users',['id_user' => $id])->row_array();
	}
}