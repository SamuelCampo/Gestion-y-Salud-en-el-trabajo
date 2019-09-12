<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Itens extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
<<<<<<< HEAD
		$this->load->model('Items');
=======
		$this->load->model('Iten');
>>>>>>> a17dad57bb1dbc6b852482d09883520dea5251f7
	}

	public function Iten()
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

<<<<<<< HEAD
				$query = $this->Items->RegistrarItems();
=======
				$query = $this->Iten->RegistrarIten();
>>>>>>> a17dad57bb1dbc6b852482d09883520dea5251f7
				echo json_encode($query);
				}
				break;
			case 'ver':
				if ($this->uri->segment(4)) {
					$id = $this->uri->segment(4);
<<<<<<< HEAD
				}else{
				$id = "";
				$query = $this->Items->ConsultaItems($id);
=======
				}
				$query = $this->Iten->ConsultaItens($id);
>>>>>>> a17dad57bb1dbc6b852482d09883520dea5251f7
				echo json_encode($query);
				}
				break;
				case 'delete':
					if ($this->uri->segment(4)) {
						$id = $this->uri->segment(4);
					}
<<<<<<< HEAD
					$query = $this->Items->DeleteItems($id);
=======
					$query = $this->Iten->DeleteItens($id);
>>>>>>> a17dad57bb1dbc6b852482d09883520dea5251f7
					echo json_encode($query);	
				break;
			default:
				# code...
				break;
		}
	}

}

/* End of file Itens.php */
/* Location: ./application/controllers/Itens.php */