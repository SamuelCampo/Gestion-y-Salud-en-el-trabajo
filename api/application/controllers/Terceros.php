<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Terceros extends CI_Controller {

	public function Terceros()
	{
		$accion = $this->uri->segment(3,'0');
		switch ($accion) {
			case '0':
			case 'gestionar':
				if ($this->uri->segment(4) == "guardar") {

				$query = $this->Registro->RegistrarTercero();
				}
				$this->Planthtml->cont['contenido'] = $this->load->view('',"",true);
				$this->Planthtml->cont['js'] = "";
				break;
			
			default:
				# code...
				break;
		}
	}

}

/* End of file Terceros.php */
/* Location: ./application/controllers/Terceros.php */