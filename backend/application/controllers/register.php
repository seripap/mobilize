<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller {

	public function index()
	{
		$this->load->view('auth/register');
	}

}

/* End of file register.php */
/* Location: ./application/controllers/register.php */
