<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Model {

	function RegistrarUsuario($datusuario = "")
	{
		if (empty($datusuario)){
			$datusuario = (object)$this->input->post();
		}

		$arr_usuario['primer_nombre_t0'] = $datusuario->primer_nombre_t0;
		$arr_usuario['segunda_nombre_t0'] = $datusuario->segunda_nombre_t0;
		$arr_usuario['primer_apellido_t0'] = $datusuario->primer_apellido_t0;
		$arr_usuario['segundo_apellido_t0'] = $datusuario->segundo_apellido_t0;
		$arr_usuario['nombre_completo_t0'] = $datusuario->primer_nombre_t0. " ".$datusuario->segunda_nombre_t0." ".$datusuario->primer_apellido_t0." ".$datusuario->segundo_apellido_t0;
		$arr_usuario['usuario_t0'] = $datusuario->usuario_t0;
		$arr_usuario['telefono_t0'] = $datusuario->telefono_t0;
		$arr_usuario['direccion_t0'] = $datusuario->direccion_t0;
		$arr_usuario['clave_t0'] = md5($datusuario->clave_t0);
		$arr_usuario['cedula_t0'] = $datusuario->cedula_t0;
		$arr_usuario['cargo_t0'] = $datusuario->cargo_t0;
		$arr_usuario['fecha_cracion_t0'] = date('Y-m-d h:i:s');


		$this->db->where('cedula_t0', $datusuario->cedula_t0);
			$query = $this->db->get('ps_usuario_t0');
			if ($query->num_rows() > 0) {
				$this->db->where('cedula_t0', $datusuario->cedula_t0);
				return $this->db->update('ps_usuario_t0', $arr_usuario);

			}else {
				return $this->db->insert('ps_usuario_t0', $arr_usuario);
			}
	}

public function ConsultaUsuario($idusuario_t0 = "")
{
	
		if (!empty($idusuario_t0)) {
			$this->db->where('cedula_t0',$idusuario_t0);
		}
		$query = $this->db->get('ps_usuario_t0');
		if ($query->result() > 0) {
			return $query->result();
		}

}

public function DeleteUsuario($idusuario_t0)
		{
		return $this->db->where('cedula_t0', $idusuario_t0)->delete('ps_usuario_t0');
		}
}

/* End of file Usuario.php */
/* Location: ./application/models/Usuario.php */