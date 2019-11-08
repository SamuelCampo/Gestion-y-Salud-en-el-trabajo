<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inspecciones extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Inspeccion');
	}

	public function Inspeccion()
	{
	header('Access-Control-Allow-Origin: *');
	header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
	header("Allow: GET, POST, OPTIONS, PUT, DELETE");
	$accion = $this->uri->segment(3,'0');
	switch ($accion) {
		// case '0':
		// case 'gestionar':
		// 	if ($this->uri->segment(4) == "guardar") {
		// 		echo json_encode($this->input->post());
		// 		$query = $this->Entidades->RegistrarEntidad();
		// 		if ($query) {
		// 			echo json_encode($query);
		// 		}
		// 		}
		// 	break;
			case 'ver':
				$query = $this->Inspeccion->ConsultaInspeccion($this->uri->segment(4));
				echo json_encode($query);
				break;

		// case 'delete':
		// 	if ($this->uri->segment(4)) {
		// 		$id = $this->uri->segment(4);
		// 		$query = $this->Entidades->DeleteEntidad($id);
		// 	}
		// 	$query = $this->Entidades->DeleteEntidad($id);
		// break;			
		default:
			# code...
			break;
	}
	}


}

/* End of file Inspecciones.php */
/* Location: ./application/controllers/Inspecciones.php */