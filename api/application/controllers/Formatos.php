<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formatos extends CI_Controller {

	public function Formato()
	{
		$accion = $this->uri->segment(3,'0');
		switch ($accion) {
			case '0':
			case 'gestionar':
				if ($this->uri->segment(4) == "guardar") {

				$query = $this->Registro->RegistrarFormato();
				json_encode($query);
				}
				break;
			
			default:
				# code...
				break;
		}
	}

}

/* End of file Formatos.php */
/* Location: ./application/controllers/Formatos.php */