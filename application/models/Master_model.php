<?php defined('BASEPATH') OR exit('No redirect script access allowed');
class Master_model extends CI_Model{
	public function cekUsers($data = null){
		return $this->db->get_where('users',$data);
	}

	public function create($table, $data, $batch = false)
    {
        if($batch === false){
            $insert = $this->db->insert($table, $data);
        }else{
            $insert = $this->db->insert_batch($table, $data);
        }
        return $insert;
    }

    public function update($table, $data, $pk, $id = null, $batch = false)
    {
        if($batch === false){
            $insert = $this->db->update($table, $data, array($pk => $id));
        }else{
            $insert = $this->db->update_batch($table, $data, $pk);
        }
        return $insert;
    }

	public function delete($table,$data,$pk){
		$this->db->where_in($pk, $data);
		return $this->db->delete($table);
	}
}
