<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Oauth extends CI_Controller {

public function session()
    {
        $this->load->helper('url_helper');

        $this->load->spark('oauth2/0.3.1');

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
