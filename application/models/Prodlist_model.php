<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Prodlist_model extends CI_Model{
	public function getProducts($limit, $start){
		$this->db->limit($limit, $start);
		$this->db->order_by('product_id', 'DESC');
		return $this->db->get('products')->result();
	}
	public function productsCount(){
		$this->db->select('product_id');
		$this->db->from('products');
		return $this->db->count_all_results();
	}
	public function getProduct($id){
		return $this->db->get_where('products',['product_id' => $id])->row();
	}
}