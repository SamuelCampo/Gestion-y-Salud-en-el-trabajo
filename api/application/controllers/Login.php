<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Logins');
	}

	

 public function IniciarSession()
 {
 	var_dump($this->session->userdata());
 }

 public function validarSesion()
	{
		echo json_encode($this->input->post());
		$newdata = array(
        'username'  => $this->input->post('usuario'),
        'email'     => $this->input->post('clave'),
        'logged_in' => TRUE
    	);
		$this->session->set_userdata( $newdata );
		echo json_encode($this->session->userdata());
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		header("Allow: GET, POST, OPTIONS, PUT, DELETE");


	}


}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */