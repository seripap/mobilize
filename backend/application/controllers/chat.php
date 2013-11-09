<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Chat extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Chat_model');
	}

	/* The default function that gets called when visiting the page */
	public function index() {
		if (!$this->ion_auth->logged_in())
		{
			//redirect them to the login page
			redirect('login', 'refresh');
		} else {
			$this->data['user'] = $this->ion_auth->user()->row();
			$this->load->view('header');
			$this->load->view('chat', $this->data);
			$this->load->view('footer');
		}

	}

	public function get_chats() {

		/* Create a table if it doesn't exist already */
		$this->Chat_model->create_table();

		echo json_encode($this->Chat_model->get_chat_from($_REQUEST["userid"]));
	}

	public function insert_chat() {

		/* Create a table if it doesn't exist already */
		$this->Chat_model->create_table();

		$this->Chat_model->insert_message($_REQUEST["message"], $_REQUEST["from"], $_REQUEST["to"], $_REQUEST["convoid"]);

		echo json_encode('done');
	}

	public function time() {
		echo "[{\"time\":" +  time() + "}]";
	}

}

/* End of file chat.php */
/* Location: ./application/controllers/chat.php */
