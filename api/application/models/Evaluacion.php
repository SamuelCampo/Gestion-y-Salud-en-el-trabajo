<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Evaluacion extends CI_Model {

	
public function RegistrarEvaluacion($datevaluacion = "" ,$idevaluacion_t9 = "")

{
	if (empty($datevaluacion)){
			$datevaluacion = (object)$this->input->post();
		}
			

		$arr_evaluacion['nomb_formato_t9'] = $datevaluacion->nomb_formato_t9;
		$arr_evaluacion['categoria_t9'] = $datevaluacion->categoria_t9;
		$arr_evaluacion['subcategoria_t9'] = $datevaluacion->subcategoria_t9;
		$arr_evaluacion['valor_t9'] = $datevaluacion->valor_t9;
		$arr_evaluacion['valoracion_t9'] = $datevaluacion->valoracion_t9;
		$arr_evaluacion['justificaicion_t9'] = $datevaluacion->justificaicion_t9;
		$arr_evaluacion['observacion_t9'] = $datevaluacion->observacion_t9;
		$arr_evaluacion['items_t9'] = $datevaluacion->items_t9;
		$arr_evaluacion['fmod_t9'] = date('Y-m-d h:i:s');
		$arr_evaluacion['usumod_t9'] = $datevaluacion->usureg_t1;

			$this->db->where('idevaluacion_t9', $idevaluacion_t9);
			$query = $this->db->get('ps_terceros_t1');
			if ($query->row() > 0) {
				$this->db->where('idevaluacion_t9', $idevaluacion_t9);
				return $this->db->update('ps_terceros_t1', $arr_evaluacion);
			}else {
				return $this->db->insert('ps_terceros_t1', $arr_evaluacion);
			}
}

public function ConsultaEvaluacion($idevaluacion_t9 = "")
	{			
				$datevaluacion = (object)$this->input->post();
				if (!empty($datevaluacion->id)) {
					$this->db->like('idevaluacion_t9',$datevaluacion->id,'both');
				}
				if (!empty($datevaluacion->id)) {
					$this->db->or_like('idevaluacion_t9',$datevaluacion->id,'both');
				}
				$query = $this->db->get('ps_terceros_t1');
				if ($query->result() > 0) {
					return $query->result();
				}
	}

public function DeleteEvaluacion($idevaluacion_t9)
		{
			return $this->db->where('idevaluacion_t9', $idevaluacion_t9)->delete('ps_terceros_t1');
		}
}

/* End of file Evaluacion.php */
/* Location: ./application/models/Evaluacion.php */