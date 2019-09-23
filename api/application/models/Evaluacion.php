<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Evaluacion extends CI_Model {

	
public function RegistrarEvaluacion($datevaluacion = "" ,$idevaluacion_t9 = "")

{
	if (empty($datevaluacion)){
			$datevaluacion = (object)$this->input->post();
		}
			

		if(!empty($datevaluacion->nomb_formato_t9))$arr_evaluacion['nomb_formato_t9'] = $datevaluacion->nomb_formato_t9;
		if(!empty($datevaluacion->categoria_t9))$arr_evaluacion['categoria_t9'] = $datevaluacion->categoria_t9;
		if(!empty($datevaluacion->subcategoria_t9))$arr_evaluacion['subcategoria_t9'] = $datevaluacion->subcategoria_t9;
		if(!empty($datevaluacion->valor_t9))$arr_evaluacion['valor_t9'] = $datevaluacion->valor_t9;
		if(!empty($datevaluacion->valoracion_t9))$arr_evaluacion['valoracion_t9'] = $datevaluacion->valoracion_t9;
		if(!empty($datevaluacion->justificaicion_t9))$arr_evaluacion['justificaicion_t9'] = $datevaluacion->justificaicion_t9;
		if(!empty($datevaluacion->observacion_t9))$arr_evaluacion['observacion_t9'] = $datevaluacion->observacion_t9;
		if(!empty($datevaluacion->items_t9))$arr_evaluacion['items_t9'] = $datevaluacion->items_t9;
		$arr_evaluacion['fmod_t9'] = date('Y-m-d h:i:s');
		$arr_evaluacion['usumod_t9'] = $datevaluacion->usureg_t1;

			$this->db->where('idevaluacion_t9', $idevaluacion_t9);
			$query = $this->db->get('ps_evaluacion_t9');
			if ($query->row() > 0) {
				$this->db->where('idevaluacion_t9', $idevaluacion_t9);
				return $this->db->update('ps_evaluacion_t9', $arr_evaluacion);
			}else {
				return $this->db->insert('ps_evaluacion_t9', $arr_evaluacion);
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
				$query = $this->db->get('ps_evaluacion_t9');
				if ($query->result() > 0) {
					return $query->result();
				}
	}

	public function DeleteEvaluacion($idevaluacion_t9)
		{
			return $this->db->where('idevaluacion_t9', $idevaluacion_t9)->delete('ps_evaluacion_t9');
		}

	// public function get()
	// 	{
	// 		$this->db->where('ps_categoria_t8.idcategoria_t8 / ps_categoria_items_t7.categoria_t7');
	// 		$query['categoria'] = $this->db->get('ps_categoria_t8,ps_itens_t3,ps_categoria_items_t7,ps_evaluacion_t9')->result();
	// 		return $query;
	// 		foreach ($query->result() as $fila) {
	// 				$producto[] = array('name' => $fila->ps_categoria_t8, 'formato' => $fila->ps_formato_t2,'id' => $fila->idevaluacion_t9);
	// 			}
			
	// 	}

		public function get($position = "")
		{

			$this->db->where('idformato_t2 = idformato_t6');
			$this->db->where('idformato_t2 = 2');
			$query['formato'] = $this->db->get('ps_formato_t2,ps_categoria_for_t6')->row();

			$this->db->where('ps_categoria_t8.idcategoria_t8',$query['formato']->idcategoria_t6);
			$this->db->where('ps_categoria_t8.idcategoria_t8 / ps_itens_t3.idcategoria_t3');
			$query['items'] = $this->db->get('ps_categoria_t8,ps_itens_t3',5,$position)->result();

			if ($query['items']) {
				# code...
			}

			return $query;


		}

		public function Eva($position = "")
		{
			$this->db->where('idcategoria_t8  = idcategoria_t4');
			$query['categoria'] = $this->db->get('ps_categoria_t8,ps_subcategoria_t4')->row();

			$this->db->where('idsubcategoria_t3',$query['categoria']->idcategoria_t8);
			$query['complemento'] = $this->db->get('ps_subcategoria_t4,ps_categoria_t8, ps_complementos_t3',5,$position)->result();

			

			return $query;

		}
}

/* End of file Evaluacion.php */
/* Location: ./application/models/Evaluacion.php */