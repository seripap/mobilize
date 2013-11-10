<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Adminlogin extends CI_Controller {

	public function index()
	{
		$identity = 'admin@admin.com';
		$password = 'password';
		$remember = TRUE; // remember the user
		$this->ion_auth->login($identity, $password, $remember);

		redirect('/', 'refresh');
	}

}

/* End of file adminlogin.php */
/* Location: ./application/controllers/adminlogin.php */

