<?php

class Chat_model extends CI_Model {

	function __construct()
	{
		/* Call the Model constructor */
		parent::__construct();
	}


	function get_last_item()
	{
		$this->db->order_by('id', 'DESC');
		$query = $this->db->get('messages', 1);
		return $query->result();
	}


	function insert_message($message, $userid, $tousername, $convoid)
	{
		$this->message = $message;
		$this->time = time();
		$this->user_id = $userid;
		$this->to_user_id = $tousername;
		$this->conversation_id = $convoid;
		$this->db->insert('messages', $this);
	}

	function get_chat_from($convoid)
	{
		//SELECT * FROM messages, users WHERE messages.user_id = 3 AND users.id = messages.user_id
		$this->db->where('conversation_id', $convoid)->order_by('time','DESC');
		$query = $this->db->get('messages');

		// $results = [];

		foreach ($query->result() as $row => $data)
		{

			foreach ($data as $key => $value) {
				if ($key == 'user_id') {
					$results[$row]['my_username'] = $this->get_username($value);
				}

				if ($key == 'to_user_id') {
					$results[$row]['to_username'] = $this->get_username($value);
				}

				$results[$row][$key] = $value;
			}
		}

		return array_reverse($results);
	}

	private function sortFunction( $a, $b ) {
	    return strtotime($a["time"]) - strtotime($b["time"]);
	}


	function get_username($userid) {
		$this->db->where('id', $userid);
		$query = $this->db->get('users');

		foreach ($query->result() as $row)
		{
			return $row->first_name;
		}

	}

	function get_chat_after($time)
	{
		$this->db->where('time >', $time)->order_by('time', 'DESC')->limit(10);
		$query = $this->db->get('messages');

		$results = array();

		foreach ($query->result() as $row)
		{
			$results[] = array($row->message,$row->time);
		}

		return array_reverse($results);
	}

	function create_table()
	{
		/* Load db_forge - used to create databases and tables */
		$this->load->dbforge();

		/* Specify the table schema */
		$fields = array(
			'id' => array(
				'type' => 'INT',
				'constraint' => 5,
				'unsigned' => TRUE,
				'auto_increment' => TRUE
				),
			'message' => array(
				'type' => 'TEXT'
				),
			'time' => array(
				'type' => 'INT'
				),
			'user_id' => array(
				'type' => 'INT'
				),
			'to_user_id' => array(
				'type' => 'INT'
				),
			'conversation_id' => array(
				'type' => 'INT'
				),
			);

		/* Add the field before creating the table */
		$this->dbforge->add_field($fields);
		/* Specify the primary key to the 'id' field */
		$this->dbforge->add_key('id', TRUE);
		/* Create the table (if it doesn't already exist) */
		$this->dbforge->create_table('messages', TRUE);

	}

}

/* End of file chat_model.php */
/* Location: ./application/models/chat_model.php */
