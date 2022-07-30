<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Pages_model extends CI_Model{
	public function listMenu(){
		$this->datatables->select('page_id,page_name,title,slug,page_link,contents');
		$this->datatables->from('pages');
		return $this->datatables->generate();
	}
	public function getPage($id){
		return $this->db->get_where('pages',['page_id' => $id])->row_array();
	}
}