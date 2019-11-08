<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inspeccion extends CI_Model {

	public function ConsultaInspeccion($idformato_t25 = "")
{
	
		if (!empty($idformato_t25) && $idformato_t25 != "null" && $idformato_t25 != "undefined") {
			$this->db->where('idformato_t25 = idformato_t2');
			$this->db->where('idformato_t2',$idformato_t25);
		}
		$query = $this->db->get('ps_eval_formato_t25,ps_formato_t2');
		if ($query->result() > 0) {
			return $query->result();
		}

}

}

/* End of file Inspeccion.php */
/* Location: ./application/models/Inspeccion.php */