<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Complementarios extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Complementario');
	}

	function index(){
		echo "hola";
	}

	public function Complementario()
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
				$id = $this->uri->segment(5);
				$query = $this->Complementario->RegistrarComplementario($id);
				echo json_encode($query);
				}
				break;
			case 'ver':
				if ($this->uri->segment(4)) {
					$id = $this->uri->segment(4);
				}
				$query = $this->Complementario->ConsultaComplementario($id);
				echo json_encode($query);
				break;
			case 'delete':
					if ($this->uri->segment(4)) {
						$id = $this->uri->segment(4);
					}
					$query = $this->Complementario->DeleteComplementario($id);
						
			default:
				# code...
				break;
		}
	}

}

/* End of file complementarios.php */
/* Location: ./application/controllers/complementarios.php */