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
			$this->load->view('header', $this->data);
			$this->load->view('chat', $this->data);
			$this->load->view('footer');
		}

	}

	public function get_chats() {

		/* Create a table if it doesn't exist already */
		$this->Chat_model->create_table();

		echo json_encode($this->Chat_model->get_chat_from($_REQUEST["convoid"]));
	}

	public function insert_chat() {

		/* Create a table if it doesn't exist already */
		$this->Chat_model->create_table();

		$this->Chat_model->insert_message($_REQUEST["message"], $_REQUEST["from"], $_REQUEST["to"], $_REQUEST["convoid"]);
 define('APPKEY','ES-nFtk6QBuHX7EEEPfW9A'); // Your App Key
 define('PUSHSECRET', '4QOndPlnRW688Np-laAxEg'); // Your Master Secret
 define('PUSHURL', 'https://go.urbanairship.com/api/push/');
		$contents = array();
 $contents['badge'] = "+1";
 $contents['alert'] = "New Message: ".$_REQUEST["message"];
 $extras = array();

 $extras['url']="/index.php/chat/".$_REQUEST["convoid"];
 $contents['extra'] = $extras;
 $notification = array();
 $notification['ios'] = $contents;
 $platform = array();
 array_push($platform, "ios");
$user = $this->ion_auth->user()->row();
$audience = array();
$audience['device_token']= $user->deviceid;

 $push = array("audience"=>$audience, "notification"=>$notification, "device_types"=>$platform);



 $json = json_encode($push);
echo $json ."<br/ >";
 $session = curl_init(PUSHURL);
 curl_setopt($session, CURLOPT_USERPWD, APPKEY . ':' . PUSHSECRET);
 curl_setopt($session, CURLOPT_POST, True);
 curl_setopt($session, CURLOPT_POSTFIELDS, $json);
 curl_setopt($session, CURLOPT_HEADER, False);
 curl_setopt($session, CURLOPT_RETURNTRANSFER, True);
 curl_setopt($session, CURLOPT_HTTPHEADER, array('Content-Type:application/json', 'Accept: application/vnd.urbanairship+json; version=3;'));
 $content = curl_exec($session);
 echo $content; // just for testing what was sent

 // Check if any error occured
 $response = curl_getinfo($session);
 if($response['http_code'] != 202) {
     echo "Got negative response from server, http code: ".
     $response['http_code'] . "\n";
 } else {

     echo "Wow, it worked!\n";
 }

 curl_close($session);


	}

	public function time() {
		echo "[{\"time\":" +  time() + "}]";
	}

}

/* End of file chat.php */
/* Location: ./application/controllers/chat.php */
