<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Itens extends CI_Controller {

	public function Iten()
	{
		$accion = $this->uri->segment(3,'0');
		switch ($accion) {
			case '0':
			case 'gestionar':
				if ($this->uri->segment(4) == "guardar") {

				$query = $this->Registro->RegistrarIten();
				json_encode($query);
				}
				break;
			
			default:
				# code...
				break;
		}
	}

}

/* End of file Itens.php */
/* Location: ./application/controllers/Itens.php */