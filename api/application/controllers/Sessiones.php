<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sessiones extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Session');
	}

	public function RegistrarSession()
	{
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

				$query = $this->Session->RegistrarSession();
				echo json_encode($query);
				}
				break;
			
			default:
				# code...
				break;
	
	}

}

/* End of file Secciones.php */
/* Location: ./application/controllers/Secciones.php */