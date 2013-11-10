<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Settings extends CI_Controller {

	public function index()
	{
		$this->load->view('header');
		$this->load->view('settings');
		$this->load->view('footer');

	}

}

/* End of file settings.php */
/* Location: ./application/controllers/settings.php */
