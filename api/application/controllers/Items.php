<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Itens extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Items');

	}

	public function Item()
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
				$query = $this->Items->RegistrarItems();
				echo json_encode($query);
				}
				break;
			case 'ver':
				if ($this->uri->segment(4)) {
					$id = $this->uri->segment(4);
				}else{
				$id = "";
				}
				$query = $this->Items->ConsultaItems($id);
				break;
				case 'delete':
					if ($this->uri->segment(4)) {
						$id = $this->uri->segment(4);
					}
					$query = $this->Items->DeleteItems($id);
					echo json_encode($query);	
				break;
			default:
				# code...
				break;
		}
	}

}

/* End of file Items.php */
/* Location: ./application/controllers/Items.php */