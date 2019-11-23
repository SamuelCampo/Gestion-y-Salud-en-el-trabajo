<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Evaluaciones extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('evaluacion');
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
					$query = $this->evaluacion->IniciarEvaluacion("",$this->uri->segment(5));
					echo json_encode($query);
				}
				break;
			case 'ver':
				$id_position = $this->uri->segment(5);
				$id = $this->uri->segment(4);
				$query = $this->evaluacion->get($id,$id_position);
				echo json_encode($query);
				break;
			case 'complementarios':
				$formato = $this->uri->segment(5);
				$id = $this->uri->segment(4);
				$query = $this->evaluacion->subCategoria($id,$formato);
				echo json_encode($query);
				break;
			case 'items':
				$id = $this->uri->segment(4);
				$query = $this->evaluacion->Complementario($id);
				echo json_encode($query);
				break;
			case 'guardarItems':
				$query = $this->evaluacion->guardarItems();
				echo json_encode($query);
				break;
		}
	}

		public function Array()
	{
		$query = $this->evaluacion->Eva();
		var_dump($query);
	}

}

/* End of file Evaluaciones.php */
/* Location: ./application/controllers/Evaluaciones.php */