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

		public function get($id_formato = "",$position = "")
		{

			$this->db->where('idformato_t2 = idformato_t6');
			$this->db->where('idformato_t2 ',$id_formato);
			$query['formato'] = $this->db->get('ps_formato_t2,ps_categoria_for_t6',1,$position)->row();

			$this->db->where('idcategoria_t4', $query['formato']->idcategoria_t6);
			$query['subcategoria'] = $this->db->get('ps_subcategoria_t4',1,$position)->row();

			$this->db->where('idsubcategoria_t3', $query['subcategoria']->idsubcategoria_t4);
			$query['complemento'] = $this->db->get('ps_complementos_t3',1,$position)->row();

			$this->db->where('complementario_t7', $query['complemento']->idcomplementos_t3);
			$this->db->where('identificativo_t7 = iditens_t10');
			$query['items'] = $this->db->get('ps_categoria_items_t7,ps_items_t10')->result();

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