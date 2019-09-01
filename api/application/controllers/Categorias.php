<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categorias extends CI_Controller {

	public function Categoria() 
	{
		$accion = $this->uri->segment(3,'0');
		switch ($accion) {
			case '0':
			case 'gestionar':
				if ($this->uri->segment(4) == "guardar") {

				$query = $this->Registro->RegistrarCategoria();
				json_encode($query);
				}
				break;
			
			default:
				# code...
				break;
		}
	}

}

/* End of file Categorias.php */
/* Location: ./application/controllers/Categorias.php */