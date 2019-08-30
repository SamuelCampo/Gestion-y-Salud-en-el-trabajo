<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tercero extends CI_Model {

	

public function RegistrarTercero($datercero)
{
	$datercero = (object)$this->input->post();

	$arr_tercero['nombre_tercero_t1'] = $datercero->nombre_tercero_t1
	$arr_tercero['identificador_t1'] = $datercero->identificador_t1
	$arr_tercero['responsable_t1'] = $datercero->responsable_t1
	$arr_tercero['telefono_t1'] = $datercero->telefono_t1
	$arr_tercero['direccion_t1'] = $datercero->direccion_t1
	$arr_tercero['fmod_t1'] = date('Y-m-d');
	$arr_tercero['usureg_t1'] = $datercero->usureg_t1
	$arr_tercero['correo_t1'] = $datercero->correo_t1
	$arr_tercero['tipo_identificacion_t1'] = $datercero->tipo_identificacion_t1

	$this->db->insert('ps_terceros_t1', $arr_tercero);

	$this->db->where('idtercero', $datercero->idtercero);
			$query = $this->db->get('ps_terceros_t1');
			if ($query->row() > 0) {
				$this->db->where('idtercero', $datercero->idtercero);
				return $this->db->update('ps_terceros_t1', $arr_tercero);

			}else {
				return $this->db->insert('ps_terceros_t1', $arr_tercero);
			}
}

public function DeleteTercero($idtercero)
		{
			$datcategoria = (object)$this->input->post();

			$arr_tercero['idtercero'] = $datcategoria->idtercero;
			$this->db->where('idtercero', $idproducto);
			$query = $this->db->get('ps_terceros_t1');

			if ($query->row() > 1) {
				$this->db->where('idtercero', $idproducto);
				return $this->db->delete('ps_terceros_t1', $arr_tercero);

			}else {

				$this->db->delete('ps_terceros_t1', $arr_tercero);
			}
		}

}

/* End of file tercero.php */
/* Location: ./application/models/tercero.php */