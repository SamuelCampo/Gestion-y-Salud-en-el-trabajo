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
	header('Access-Control-Allow-Origin: *');
	header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
	header("Allow: GET, POST, OPTIONS, PUT, DELETE");

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
 		echo json_encode($this->session->userdata());
 	}
	
 }
  
 }

 function saludar(){
 	var_dump($this->session->userdata());
 }

}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */