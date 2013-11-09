<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class dir extends CI_Controller {

	public function index()
	{
		$cats_query = $this->db->query('SELECT * FROM directory_cat where active=1 order by ord,cid asc;');
		$cats = $cats_query->result();
		$entries = array();
		foreach ($cats as $key => $cat) {
			$entries_query = $this->db->query('SELECT * FROM directory_entries where active=1 and cid = '.$cat->cid.' order by ord,id');
			$entries[$cat->cid] = $entries_query->result();
			foreach ($entries[$cat->cid] as $k => $entry) {
				//echo $entry->title."<br />";
			}
			
		}
		$data['json'] = $cats;
		$this->load->view('dir', $data, FALSE);


		//$this->load->view('view/directory', $data, FALSE);
	}
	public function getentries ($cat){

		echo "dan's awesome<br /><br />";

		$entries_query = $this->db->query('SELECT * FROM directory_entries where active=1 and cid = '.$cat.' order by ord,id');
		$entries[$cat] = $entries_query->result();
		foreach ($entries[$cat] as $k => $entry) {
			//echo $entry->title."<br />";
		}
		$data['json'] = $entries;
	}
}

/* End of file directory.php */
/* Location: ./application/controllers/directory.php */