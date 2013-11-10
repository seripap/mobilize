<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fblogin extends CI_Controller {

	public function index()
	{

		$identity = 'matt@black.com';
		$password = 'password';
		$remember = TRUE; // remember the user
		$this->ion_auth->login($identity, $password, $remember);

		redirect('/', 'refresh');

	}

}

/* End of file fblogin.php */
/* Location: ./application/controllers/fblogin.php */
