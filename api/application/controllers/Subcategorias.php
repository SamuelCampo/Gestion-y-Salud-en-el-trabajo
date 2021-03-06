<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Subcategorias extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Subcategoria');
	}

	public function Subcategoria() 
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
					if (!empty($this->uri->segment(5))) {
						$id = $this->uri->segment(5);
					}else{
						$id = "";
					}
				$query = $this->Subcategoria->RegistrarSubcategoria($id);
				echo json_encode($query);
				}
				break;
			case 'ver':
				if (!empty($this->uri->segment(4))){
					$id = $this->uri->segment(4);
				}else{
					$id = "";
				}
				$query = $this->Subcategoria->ConsultaSubcategoria($id);
				echo json_encode($query);
				break;
			case 'delete':
					if ($this->uri->segment(4)) {
						$id = $this->uri->segment(4);
					}
					$query = $this->Subcategoria->DeleteSubcategoria($id);
					echo json_encode($query);	
				break;
			default:
				# code...
				break;
		}
	}

	function muestra_array(){
		$query = $this->Subcategoria->get();
		var_dump($query);

	}

}

/* End of file Subcategorias.php */
/* Location: ./application/controllers/Subcategoriass.php */