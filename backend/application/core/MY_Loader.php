<?php

/**
 * /application/core/MY_Loader.php
 *
 */
class MY_Loader extends CI_Loader {
    public function template($template_name, $vars = array(), $return = FALSE)
    {
        $content  = $this->view('header', $vars, $return);
        $content .= $this->view($template_name, $vars, $return);
        $content .= $this->view('footer', $vars, $return);

        if ($return)
        {
            return $content;
        }
    }
}

/* End of file MY_Loader.php */
/* Location: ./application/core/MY_Loader.php */
