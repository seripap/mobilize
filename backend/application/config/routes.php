<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "auth";
$route['login'] = "auth/login";
$route['logout'] = "auth/logout";
$route['register'] = "auth/register";
$route['forgot'] = "auth/forgot_password";
$route['chat/1'] = "chat";
$route['chat/2'] = "chat";
$route['chat/3'] = "chat";
$route['chat/4'] = "chat";
$route['chat/5'] = "chat";
$route['chat/6'] = "chat";
$route['chat/7'] = "chat";
$route['chat/8'] = "chat";
$route['chat/9'] = "chat";
$route['chat/10'] = "chat";
$route['chat/11'] = "chat";
$route['chat/12'] = "chat";
$route['chat/13'] = "chat";
$route['chat/14'] = "chat";
$route['chat/15'] = "chat";
$route['chat/16'] = "chat";
$route['chat/17'] = "chat";
$route['chat/18'] = "chat";
$route['chat/19'] = "chat";
$route['chat/20'] = "chat";

$route['404_override'] = '';
$route['directory'] = 'dir';


/* End of file routes.php */
/* Location: ./application/config/routes.php */
