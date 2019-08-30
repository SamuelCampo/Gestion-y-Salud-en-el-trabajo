<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Model {

	function RegistrarUsuario($datusuario)
	{
		$datusuario = (object)$this->input->post();

		$arr_usuario['primer_nombre_t0'] = $datusuario->primer_nombre_t0;
		$arr_usuario['segunda_nombre_t0'] = $datusuario->segunda_nombre_t0;
		$arr_usuario['primer_apellido_t0'] = $datusuario->primer_apellido_t0;
		$arr_usuario['segundo_apellido_t0'] = $datusuario->segundo_apellido_t0;
		$arr_usuario['nombre_completo'] = $datusuario->nombre_completo;
		$arr_usuario['usuario_t0'] = $datusuario->usuario_t0;
		$arr_usuario['telefono_t0'] = $datusuario->telefono_t0;
		$arr_usuario['direccion_t0'] = $datusuario->direccion_t0;
		$arr_usuario['clave_t0'] = $datusuario->clave_t0;
		$arr_usuario['fecha_cracion_t0'] = date('Y-m-d');

		$this->db->insert('ps_usuario_t0', $arr_usuario);
	}

public function ConsultaUsuario($idusuario_t0)
{
	$query = $this->db->get('ps_usuario_t0');
			if ($query->row() > 0) {
				return $query->row();
			}
}

}

/* End of file Usuario.php */
/* Location: ./application/models/Usuario.php */