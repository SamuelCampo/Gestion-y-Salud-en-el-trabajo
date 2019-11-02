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

 	if ($this->uri->segment(3) == 'guardar') {

 	$user = $this->input->post('usuario_t0');
 	$pass = $this->input->post('clave_t0');
 	$session = $this->Logins->validaUsuario($user,$pass);

 	if (empty($session)) {
 		return false;
 	}else {
 		$array = array(
 			'usr' => $session[0]
 		);
 		
 		$this->session->set_userdata( $array );
 		var_dump($this->session->userdata());
 	}
	
 }

 $this->load->view('login');
  
 }

 function saludar(){
 	var_dump($this->session->userdata());
 }

}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */