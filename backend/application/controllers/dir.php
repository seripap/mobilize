<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class dir extends CI_Controller {

	public function index()
	{
		$data["echo"] = "Jennifer's awesome";
		$data['cats'] = $this->getcats();


		$data['title'] = "Services";
		$this->_render_page("dir", $data);
		//$this->load->view('view/directory', $data, FALSE);
	}
	function haskids($cid){
		$count_query = $this->db->query('SELECT * FROM directory_cat where active=1 and parent = '.$cid.'');
		$count = count($count_query->result());
		if($count>0){

			return true;
		}else{
			return false;
		}
	}
	function getcatname($cid){
$catname_query = $this->db->query('SELECT * FROM directory_cat where cid='.$cid);
$catname = $catname_query->result();
foreach ($catname as $key => $cat) {
return  $cat->title;
}
	}

	public function getcats($parent = 0, $format="data")
	{

		$cats_query = $this->db->query('SELECT * FROM directory_cat where active=1 and parent='.$parent.' order by ord,cid asc;');
		$cats = $cats_query->result();
		$entries = array();
		foreach ($cats as $key => $cat) {
			$cats[$key]->haskids = $this->haskids($cat->cid);

			$entries_query = $this->db->query('SELECT * FROM directory_entries where active=1 and cid = '.$cat->cid.' order by ord,id');
			$entries[$cat->cid] = $entries_query->result();
			foreach ($entries[$cat->cid] as $k => $entry) {
				//echo $entry->title."<br />";
			}

		}
		$data['json'] = $cats;
		if($format ==="json"){
			$this->load->view('getcats', $data, FALSE);
		}elseif($format === "data"){

			return $cats;
		}

	}
	public function getentries ($cat, $format = "data"){

		//echo "dan's awesome<br /><br />".$cat;
		$entries_query = $this->db->query('SELECT directory_entries.*, directory_cat.title as cattitle FROM directory_entries left join directory_cat on  directory_entries.cid =directory_cat.cid where directory_entries.active=1 and directory_entries.cid='.$cat.' order by directory_entries.ord,directory_entries.id');
		$entries = $entries_query->result();
		foreach ($entries as $key => $entry) {
			$entries[$key]->rating = $this->getrating($entry->id);
		}
		$data['json'] = $entries;
		$this->load->view('getentries', $data, FALSE);
	}
	public function getentry($entry, $format = "data")
	{
		$entry_query = $this->db->query('SELECT directory_entries.*, directory_cat.title as cattitle FROM directory_entries left join directory_cat on  directory_entries.cid =directory_cat.cid where directory_entries.active=1 and directory_entries.id='.$entry.' order by directory_entries.ord,directory_entries.id');
		$entry = $entry_query->result();
		foreach ($entry as $key => $entrys) {
			$entry[$key]->rating = $this->getrating($entrys->id);
		}
		$data['json'] = $entry;
		$this->load->view('getentry', $data, FALSE);
	}
	public function rateentry($entry,$rate,$format = "data")
	{
		$user = $this->ion_auth->user()->row();
		if($user){
			$rate_query = $this->db->query("INSERT INTO `ratings` (`rate`,`entry`,`date`,`date_mod` ,`type`, `active`,`user`) VALUES ('".$rate."', '".$entry."',Now(),Now(),'entry','1', '".$user->id."')");
		}
	}
	public function getrating($entry, $format="data")
	{
		$rating_query = $this->db->query('select avg(rate) as rating from ratings where entry ='.$entry.' group by entry;');
		$rating = $rating_query->result();
		if(count($rating)>0){
		$data['json'] = $rating[0]->rating;
		if($format ==="json"){
			$this->load->view('json', $data, FALSE);
		}elseif($format === "data"){

			return $rating[0]->rating;
		}else{
			return null;
		}
	}
	}
	function _render_page($view, $data=null, $render=false)
	{

		$this->viewdata = (empty($data)) ? $this->data: $data;

		$this->load->view('header', $this->viewdata);
		$view_html = $this->load->view($view, $this->viewdata, $render);
		$this->load->view('footer');

		if (!$render) return $view_html;
	}
}
/* End of file directory.php */
/* Location: ./application/controllers/directory.php */
