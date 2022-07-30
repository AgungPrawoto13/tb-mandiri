<?php defined('BASEPATH') OR exit('No redirect script access allowed');

class Products_model extends CI_Model{
	public function listProducts(){
		$this->datatables->select('product_id,nama,merk,harga,deskripsi,gambar');
		$this->datatables->from('products');
		return $this->datatables->generate();
	}
	public function getProduct($id){
		return $this->db->get_where('products',['product_id' => $id])->row_array();
	}
	public function getData(){
		$this->db->select('*');
		$this->db->from('products');
		$this->db->order_by('product_id','DESC');
		$this->db->limit(4);
		return $this->db->get()->result_array();
	}
	public function semuaProduk(){
		$this->db->select('*');
		$this->db->from('products');
		$this->db->order_by('product_id','DESC');
		$this->db->limit(4);
		$sql = $this->db->get();
		return $sql->result();
	}
}