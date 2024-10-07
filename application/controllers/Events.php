<?php 

class Events extends CI_Controller
{
	
	public function index(){
		
		$data['title'] = 'Latest Events';

		$data['events'] = $this->events_model->get_events();
		

		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('events/index', $data);
		$this->load->view('includes/footer');

	
	}


	public function view($slug = NULL){
		$data['event'] = $this->events_model->get_events($slug);
		if (empty($data['event'])) {
			show_404();
		}

		$data['title'] = $data['event']['title'];
		

		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('events/view', $data);
		$this->load->view('includes/footer');


	}

  public function publish(){
  	$data['title'] = 'Publish events';
	 		  
	  

	  $this->form_validation->set_rules('title', 'Title', 'required');
	  $this->form_validation->set_rules('day', 'Day', 'required');
	  $this->form_validation->set_rules('month', 'Month', 'required');
	  $this->form_validation->set_rules('year', 'Year', 'required');
	  $this->form_validation->set_rules('body', 'Body', 'required');

	 if ($this->form_validation->run() === FALSE) {
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('events/publish', $data);
		$this->load->view('includes/footer');
	 }else {
		// Upload Image
		$config['upload_path'] = './assets/images/posts';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size'] = '2048';
		$config['max_width'] = '2000';
		$config['max_height'] = '2000';

		$this->load->library('upload', $config);

		if(!$this->upload->do_upload()){
			$errors = array('error' => $this->upload->display_errors());
			$post_image = 'noimage.jpg';
		} else {
			$data = array('upload_data' => $this->upload->data());
			$post_image = $_FILES['userfile']['name'];
		}
		     $this->events_model->create_post($post_image);
		 redirect('events');

	 }

		
  }


  public function delete($id){


	$this->events_model->delete_post($id);
	redirect('events');

}


public function edit($slug){
	$data['new'] = $this->events_model->get_events($slug);
		if (empty($data['new'])) {
			show_404();
		}

		$data['title'] = 'Edit events Post';
				  

		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('events/edit', $data);
		$this->load->view('includes/footer');
}



public function update(){
	$this->events_model->update_post();
	redirect('events');
}


}

