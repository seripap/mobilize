<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Oauth extends CI_Controller {

public function index()
    {
        // $this->load->helper('directory');

        // $this->load->spark('oauth2/0.3.1');

        $provider = $this->oauth2->provider('facebook', array(
            'id' => '216872928438585',
            'secret' => '08208385ada0bbfdf0b202721afa0a30',
        ));

        if ( ! $this->input->get('code'))
        {
            // By sending no options it'll come back here
            $provider->authorize();
        }
        else
        {
            // Howzit?
            try
            {
                $token = $provider->access($_GET['code']);
                $user = $provider->get_user_info($token);

                $uid = $user['uid'];
                $username = $user['email'];
                $email    = $user['email'];
                $password = $user['email'];

                $additional_data = array(
                    'first_name' => $user['first_name'],
                    'last_name'  => $user['last_name'],
                    'img'      => $user['image'],
                    'token'    => $token->access_token,
                );

                //                 echo "<pre>Tokens: ";
                // var_dump($token);

                // echo "\n\nUser Info: ";
                // var_dump($user);
                // file_put_contents(FCPATH."images/".$uid.".jpg", $user['image']);


                if ($this->ion_auth->register($username, $password, $email, $additional_data)) {
                    // Registered
                    // print_r('success');
                    $this->ion_auth->login($username, $username, TRUE);
                    redirect('/', 'refresh');
                } else {

                    $data = array(
                            'token' =>  $token->access_token
                        );

                    $this->db->where('email', $email);
                    $this->db->update('users', $data);

                    // user already registered, or an error
                    $this->ion_auth->login($username, $username, TRUE);
                    redirect('/', 'refresh');
                }


                // Here you should use this information to A) look for a user B) help a new user sign up with existing data.
                // If you store it all in a cookie and redirect to a registration page this is crazy-simple.
                echo "<pre>Tokens: ";
                var_dump($token);

                echo "\n\nUser Info: ";
                var_dump($user);
            }

            catch (OAuth2_Exception $e)
            {
                show_error('That didnt work: '.$e);
            }

        }
    }
}

/* End of file oauth.php */
/* Location: ./application/controllers/oauth.php */
