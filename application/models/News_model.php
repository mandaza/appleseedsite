
<?php


class News_model extends CI_Model
{
	
	public function __construct(){
		$this->load->database();	
	}

	public function get_news($slug = FALSE){
		if ($slug === FALSE) {
			
			$this->db->order_by('news.id', 'DESC');
	     
			$query = $this->db->get('news');
			return $query->result_array();
		}


    $query = $this->db->get_where('news', array('slug' => $slug));
    return $query->row_array();
	}



	
	public function create_post($post_image){
		$slug = url_title($this->input->post('title'));
		$data = array(
			'title' => $this->input->post('title'),
			'slug' => $slug,
			'body' => $this->input->post('body'),
			'post_image' => $post_image
		
		);

		return $this->db->insert('news', $data);
	}
 

	public function delete_post($id){
		$this->db->where('id', $id);
		$this->db->delete('news');
		return true;
	}




	public function update_post(){
		$slug = url_title($this->input->post('title'));

		$data = array(
			'title' => $this->input->post('title'),
			'slug' => $slug,
			'body' => $this->input->post('body'),
			
		);

		$this->db->where('id', $this->input->post('id'));
		return $this->db->update('news', $data);
	}





}