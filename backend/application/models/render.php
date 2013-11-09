<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Render extends CI_Model {

	function template($view) {

		$this->load->view('header');
		$this->load->view($view);
		$this->load->view('footer');
	}

}

/* End of file render.php */
/* Location: ./application/models/render.php */
