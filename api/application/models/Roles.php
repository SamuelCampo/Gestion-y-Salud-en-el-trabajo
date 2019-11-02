<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roles extends CI_Model {

function RegistrarRol()
	{
		if (empty($datroles)){
			$datroles = (object)$this->input->post();
		}

		$arr_roles['nombre_rol_t11'] = $datroles->nombre_rol_t11;
		$arr_roles['usucreacion_rol_t11'] = $datroles->usucreacion_rol_t11;
		$arr_roles['fcreacion_rol_t11'] = date('Y-m-d h:i:s');


		$this->db->where('idroles_t11', $datroles->idroles_t11);
			$query = $this->db->get('roles_t11	');
			if ($query->num_rows() > 0) {
				$this->db->where('idroles_t11', $datroles->idroles_t11);
				return $this->db->update('roles_t11	', $arr_roles);

			}else {
				return $this->db->insert('roles_t11	', $arr_roles);
			}
	}


	public function ConsultaRoles($idroles_t11 = "")
{
	
		if (!empty($idroles_t11)) {
			$this->db->where('idroles_t11',$idroles_t11);
		}
		$query = $this->db->get('roles_t11');
		if ($query->result() > 0) {
			return $query->result();
		}

}

public function DeleteRoles($idroles_t11)
		{
		return $this->db->where('idroles_t11', $idroles_t11)->delete('roles_t11');
		}
	

}

/* End of file roles.php */
/* Location: ./application/models/roles.php */