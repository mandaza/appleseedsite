<?php 


class News extends CI_Controller
{
	
	public function index(){
		
		$data['title'] = 'Latest News';

		$data['news'] = $this->news_model->get_news();
		

		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('news/index', $data);
		$this->load->view('includes/footer');

	
	}


	public function view($slug = NULL){
		$data['new'] = $this->news_model->get_news($slug);
		if (empty($data['new'])) {
			show_404();
		}

		$data['title'] = $data['new']['title'];
		

		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('news/view', $data);
		$this->load->view('includes/footer');


	}

  public function publish(){
  	$data['title'] = 'Publish News';
	  		  
	  

	  $this->form_validation->set_rules('title', 'Title', 'required');
	  $this->form_validation->set_rules('body', 'Body', 'required');

	 if ($this->form_validation->run() === FALSE) {
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('news/publish', $data);
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
		     $this->news_model->create_post($post_image);
		 redirect('news');

	 }

		
  }


  public function delete($id){


	$this->news_model->delete_post($id);
	redirect('news');

}


public function edit($slug){
	$data['new'] = $this->news_model->get_news($slug);
		if (empty($data['new'])) {
			show_404();
		}

		$data['title'] = 'Edit News Post';
	

		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('news/edit', $data);
		$this->load->view('includes/footer');
}



public function update(){
	$this->news_model->update_post();
	redirect('news');
}


}

