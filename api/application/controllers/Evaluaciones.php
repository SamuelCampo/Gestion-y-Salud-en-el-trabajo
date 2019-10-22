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

				$query = $this->evaluacion->RegistrarEvaluacion();
				echo json_encode($query);
				}
				break;
			case 'ver':
				$id_position = $this->uri->segment(5);
				$id = $this->uri->segment(4);
				$id_sub = $this->uri->segment(6);
				$id_complementario = $this->uri->segment(7);
				$query = $this->evaluacion->get($id,$id_position,$id_sub,$id_complementario);
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