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

	public function UsuarioP()
	{
		$datUser = (object)array(
			'primer_nombre_t0' => 'Ey',
			'segunda_nombre_t0' => 'Alejandro',
			'primer_apellido_t0' => 'Ortega',
			'segundo_apellido_t0' => 'Blanco',
			'nombre_completo_t0' => 'Miguel Alejandro Ortega Blanco',
			'usuario_t0' => 'Miguelort095',
			'telefono_t0' => '302 454 67 08',
			'direccion_t0' => 'Santa Viviana',
			'clave_t0' => '123456789',
			'cedula_t0' => '1053124898',
			'fecha_cracion_t0' => '2019-09-01'
		);
		$this->Usuario->RegistrarUsuario($datUser);
	}
}
