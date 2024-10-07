<?php

class Email extends CI_Controller
{


public function subscribe()
{
    $this->load->helper('form');
    $this->load->library('form_validation');

    $data['title'] = 'Create a news item';

    $this->form_validation->set_rules('email', 'Email', 'required');


    if ($this->form_validation->run() === FALSE)
    {
        
        $this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('home', $data);
		$this->load->view('includes/footer');
        

    }
    else
    {
        $this->email_model->set_email();
        redirect('home');
    }
}

}