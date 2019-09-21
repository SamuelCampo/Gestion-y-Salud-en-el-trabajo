<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Evaluaciones extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Evaluacion');
	}

	public function Evaluacion()
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

				$query = $this->Evaluacion->RegistrarEvaluacion();
				echo json_encode($query);
				}
				break;
			case 'ver':
				if ($this->uri->segment(4)) {
					$id = $this->uri->segment(4);
				}
				$query = $this->Evaluacion->ConsultaEvaluacion($id);
				echo json_encode($query);
				break;
			case 'delete':
					if ($this->uri->segment(4)) {
						$id = $this->uri->segment(4);
					}
					$query = $this->Evaluacion->DeleteEvaluacion($id);
						
			default:
				# code...
				break;
		}
	}

		public function Array()
	{
		$query = $this->Evaluacion->Eva();
		var_dump($query);
	}

}

/* End of file Evaluaciones.php */
/* Location: ./application/controllers/Evaluaciones.php */