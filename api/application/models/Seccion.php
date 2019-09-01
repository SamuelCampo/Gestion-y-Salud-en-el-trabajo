<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Seccion extends CI_Model {

	function RegistrarSeccion($datseccion = "")
	{
		$datseccion = (object)$this->input->post();

		$arr_seccion['usuario_t5'] = $datseccion->usuario_t5;
		$arr_seccion['finicio_t5'] = date('Y-m-d');
		$arr_seccion['fcierre_t5'] = date('Y-m-d');


		return $this->db->insert('ps_seccion_t5', $arr_seccion);

	}

}

/* End of file Seccion.php */
/* Location: ./application/models/Seccion.php */