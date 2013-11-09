<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Messages extends CI_Controller {

	function __construct() {
		parent::__construct();
	}

	public function index()
	{
		$this->_render('welcome_message');
	}

	private function _render($view) {

		$this->load->view('header');
		$view_html = $this->load->view($view);
		$this->load->view('footer');
	}

}

/* End of file messages.php */
/* Location: ./application/controllers/messages.php */
