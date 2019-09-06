<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tercero extends CI_Model {

	

public function RegistrarTercero($datercero = "" ,$idterceros_t1 = "")

{
	if (empty($datercero)){
			$datercero = (object)$this->input->post();
		}
			

		$arr_tercero['nombre_tercero_t1'] = $datercero->nombre_tercero_t1;
		$arr_tercero['identificador_t1'] = $datercero->identificador_t1;
		$arr_tercero['responsable_t1'] = $datercero->responsable_t1;
		$arr_tercero['telefono_t1'] = $datercero->telefono_t1;
		$arr_tercero['direccion_t1'] = $datercero->direccion_t1;
		$arr_tercero['fmod_t1'] = date('Y-m-d h:i:s');
		$arr_tercero['usureg_t1'] = $datercero->usureg_t1;
		$arr_tercero['correo_t1'] = $datercero->correo_t1;
		$arr_tercero['tipo_identificacion_t1'] = $datercero->tipo_identificacion_t1;

			$this->db->where('idterceros_t1', $idterceros_t1);
			$query = $this->db->get('ps_terceros_t1');
			if ($query->row() > 0) {
				$this->db->where('idterceros_t1', $idterceros_t1);
				return $this->db->update('ps_terceros_t1', $arr_tercero);
			}else {
				return $this->db->insert('ps_terceros_t1', $arr_tercero);
			}
}

public function ConsultaTercero($idterceros_t1 = "")
	{			
				$datercero = (object)$this->input->post();
				if (!empty($datercero->id)) {
					$this->db->like('idterceros_t1',$datercero->id,'both');
				}
				if (!empty($datercero->id)) {
					$this->db->or_like('idterceros_t1',$datercero->id,'both');
				}
				$query = $this->db->get('ps_terceros_t1');
				if ($query->result() > 0) {
					return $query->result();
				}
	}

public function DeleteTercero($idterceros_t1)
		{
			return $this->db->where('idterceros_t1', $idterceros_t1)->delete('ps_terceros_t1');
		}

}

/* End of file tercero.php */
/* Location: ./application/models/tercero.php */