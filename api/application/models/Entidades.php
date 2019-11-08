<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Entidades extends CI_Model {

function RegistrarEntidad($datentidad = "")
	{
		if (empty($datentidad)){
			$datentidad = (object)$this->input->post();
		}

		
		$arr_entidad['nombre_t12'] = $datentidad->nombre_t12;
		$arr_entidad['nit_t12'] = $datentidad->nit_t12;
		$arr_entidad['responsable_t12'] = $datentidad->responsable_t12;
		$arr_entidad['telefono_t12'] = $datentidad->telefono_t12;
		$arr_entidad['correo_t12'] = $datentidad->correo_t12;
		$arr_entidad['direccion_t12'] = $datentidad->direccion_t12;
		$arr_entidad['usumod_t12'] = "Super Usuario";
		$arr_entidad['fmod_t12'] = date('Y-m-d h:i:s');


		$this->db->where('nit_t12', $datentidad->nit_t12);
			$query = $this->db->get('ps_entidad_t12');
			if ($query->num_rows() > 0) {
				$this->db->where('nit_t12', $datentidad->nit_t12);
				return $this->db->update('ps_entidad_t12', $arr_entidad);

			}else {
				return $this->db->insert('ps_entidad_t12', $arr_entidad);
			}
	}

public function ConsultaEntidad($identidad_t12 = "")
{
	
		if (!empty($identidad_t12)) {
			$this->db->where('nit_t12',$identidad_t12);
		}
		$query = $this->db->get('ps_entidad_t12');
		if ($query->result() > 0) {
			return $query->result();
		}

}

public function DeleteEntidad($identidad_t12)
		{
		return $this->db->where('nit_t12', $identidad_t12)->delete('ps_entidad_t12');
		}	

}

/* End of file Entidades.php */
/* Location: ./application/models/Entidades.php */