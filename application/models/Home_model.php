
<?php


class Home_model extends CI_Model
{
	
	public function __construct(){
		$this->load->database();	
	}

	public function get_news($slug = FALSE){
		if ($slug === FALSE) {
			
			$this->db->limit(4);
			$this->db->order_by('news.id', 'DESC');
	
			$query = $this->db->get('news');
			return $query->result_array();
		}


    $query = $this->db->get_where('news', array('slug' => $slug));
    return $query->row_array();
	}



	
	


}