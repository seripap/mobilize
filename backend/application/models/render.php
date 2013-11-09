<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Render extends CI_Model {

	function template($view, $data=null)
	{

		$this->viewdata = (empty($data)) ? $this->data: $data;

		$this->load->view('header');
		$view_html = $this->load->view($view, $this->$viewdata);
		$this->load->view('footer');
		if (!$render) return $view_html;
	}

}

/* End of file render.php */
/* Location: ./application/models/render.php */
