<?php 


class Pages extends CI_Controller
{
	
	public function view($page ='home'){
		if(!file_exists(APPPATH.'views/'.$page.'.php')){
			show_404();
		}
	
		$data['title'] = ucfirst($page);

		$data['title'] = 'Latest News';
		$data['news'] = $this->home_model->get_news();

		 
		$data['title'] = 'Latest Events';
		$data['events'] = $this->homeE_model->get_events();


		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view($page, $data);
		$this->load->view('includes/footer');

		
		
	}
}

 
