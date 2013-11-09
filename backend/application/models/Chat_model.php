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


	function insert_message($message, $userid, $tousername)
	{
		$this->message = $message;
		$this->time = time();
		$this->user_id = $userid;
		$this->to_user_id = $tousername;
		$this->db->insert('messages', $this);
	}

	function get_chat_from($userid)
	{
		$this->db->select('user_id')->from('users')->where('user_id',$userid)->join('users', 'id ='.$userid);
		// $this->db->where('user_id', $userid)->order_by('time','DESC')->join('users', 'id ='.$userid);
		$query = $this->db->get('messages');

		$results = array();

		foreach ($query->result() as $row)
		{
			$results[] = array($row->message,$row->time,$row->to_user_id);
		}

		print_r($results);

		return array_reverse($results);
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
				)
			);

		/* Add the field before creating the table */
		$this->dbforge->add_field($fields);


		/* Specify the primary key to the 'id' field */
		$this->dbforge->add_key('id', TRUE);


		/* Create the table (if it doesn't already exist) */
		$this->dbforge->create_table('messages', TRUE);
	}


}
