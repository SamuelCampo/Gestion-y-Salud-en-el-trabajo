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
	$accion = $this->uri->segment(3,'0');
	switch ($accion) {
		case '0':
		case 'gestionar':
			if ($this->uri->segment(4) == "guardar") {

				$query = $this->Registro->RegistrarUsuario();
				}
				$this->Planthtml->cont['contenido'] = $this->load->view('Principal/home',"",true);
				$this->Planthtml->cont['js'] = "";
			break;
			case 'ver':
				$usuario['datusuario'] = $this->Usuario->ConsultaUsuario();
				$this->Planthtml->cont['contenido'] = $this->load->view('Principal/home',$usuario,true);
				$this->Planthtml->cont['js'] = "";
				break;
		default:
			# code...
			break;
	}
	$this->Planthtml->generar();
	}
}
