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
 	
 }

 public function validarSesion()
	{
		$array = array(
			'clave_t0' => $this->input->post('clave_t0')
		);
		
		$this->session->set_userdata( $array );

	}


}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */