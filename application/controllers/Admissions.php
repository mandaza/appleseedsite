<?php 


class Admissions extends CI_Controller
{
	
    public function index(){
		
		$data['title'] = 'Latest News';

		$data['news'] = $this->news_model->get_news();
		

	
		$this->load->view('admissions/index', $data);
		

	
	}
}