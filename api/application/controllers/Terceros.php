<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Terceros extends CI_Controller {

	public function Tercero()
	{
		$accion = $this->uri->segment(3,'0');
		switch ($accion) {
			case '0':
			case 'gestionar':
				if ($this->uri->segment(4) == "guardar") {

				$query = $this->Registro->RegistrarTercero();
				json_encode($query);
				}
				break;
			
			default:
				# code...
				break;
		}
	}

}

/* End of file Terceros.php */
/* Location: ./application/controllers/Terceros.php */