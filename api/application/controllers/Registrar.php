<?php
if( ! ini_get('date.timezone') )
{
    date_default_timezone_set('GMT');
}
defined('BASEPATH') OR exit('No direct script access allowed');

class Registrar extends CI_Controller {

public function __construct()
	{
		parent::__construct();
		$this->load->model('Tercero');
		$this->load->model('Usuario');
	}

	public function usuario()
	{
	header('Access-Control-Allow-Origin: *');
	header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
	header("Allow: GET, POST, OPTIONS, PUT, DELETE");
	$accion = $this->uri->segment(3,'0');
	switch ($accion) {
		case '0':
		case 'gestionar':
			if ($this->uri->segment(4) == "guardar") {

				$query = $this->Usuario->RegistrarUsuario();
				}
			break;
			case 'ver':
				$query = $this->Usuario->ConsultaUsuario();
				echo json_encode($query);
				break;
		default:
			# code...
			break;
	}
	}


}
