<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logout extends CI_Controller {

	public function index()
	{
		$this->ion_auth->logout();

		$this->load->view('logout');
	}

}

/* End of file logout.php */
/* Location: ./application/controllers/logout.php */
