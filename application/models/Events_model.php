
<?php


class Events_model extends CI_Model
{
	
	public function __construct(){
		$this->load->database();	
	}

	public function get_events($slug = FALSE){
		if ($slug === FALSE) {
			
			$this->db->order_by('events.id', 'DESC');
	      ;
			$query = $this->db->get('events');
			return $query->result_array();
		}


    $query = $this->db->get_where('events', array('slug' => $slug));
    return $query->row_array();
	}



	
	public function create_post($post_image){
		$slug = url_title($this->input->post('title'));
		$data = array(
			'day' => $this->input->post('day'),
			'month' => $this->input->post('month'),
			'year' => $this->input->post('year'),
			'title' => $this->input->post('title'),
			'begin' => $this->input->post('begin'),
			'end' => $this->input->post('end'),
			'location' => $this->input->post('location'),
			'slug' => $slug,
			'body' => $this->input->post('body'),
			
			'post_image' => $post_image
		
		);

		return $this->db->insert('events', $data);
	}
 

	public function delete_post($id){
		$this->db->where('id', $id);
		$this->db->delete('events');
		return true;
	}




	public function update_post(){
		$slug = url_title($this->input->post('title'));

		$data = array(
			'title' => $this->input->post('title'),
			'slug' => $slug,
			'body' => $this->input->post('body')
			
		);

		$this->db->where('id', $this->input->post('id'));
		return $this->db->update('events', $data);
	}





}