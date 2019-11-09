<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inspeccion extends CI_Model {

	function RegistrarInspeccion($datinspeccion = "")
	{
		if (empty($datinspeccion)){
			$datinspeccion = (object)$this->input->post();
		}

		
		$arr_inspeccion['plan_accion_t28'] = $datinspeccion->plan_accion_t28;
		$arr_inspeccion['varlorItems_t28'] = $datinspeccion->varlorItems_t28;
		$arr_inspeccion['fecha_t28'] = $datinspeccion->fecha_t28;
		$arr_inspeccion['cargo_t28'] = $datinspeccion->cargo_t28;
		$arr_inspeccion['fundamentos_t28'] = $datinspeccion->fundamentos_t28;
		$arr_inspeccion['usumod_t28'] = "Super Usuario";
		$arr_inspeccion['fmod_t28'] = date('Y-m-d h:i:s');


		$this->db->where('idinspeccion_t28', $datinspeccion->idinspeccion_t28);
			$query = $this->db->get('ps_inspeccion_t28');
			if ($query->num_rows() > 0) {
				$this->db->where('idinspeccion_t28', $datinspeccion->idinspeccion_t28);
				return $this->db->update('ps_inspeccion_t28', $arr_inspeccion);

			}else {
				return $this->db->insert('ps_inspeccion_t28', $arr_inspeccion);
			}
	}

	public function ConsultaInspe($idinspeccion_t28 = "")
{
	
		if (!empty($idinspeccion_t28)) {
			$this->db->where('idinspeccion_t28',$idinspeccion_t28);
		}
		$query = $this->db->get('ps_inspeccion_t28');
		if ($query->result() > 0) {
			return $query->result();
		}

}

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