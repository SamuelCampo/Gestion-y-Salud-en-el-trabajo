<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Evaluacion extends CI_Model {

	
public function RegistrarEvaluacion($datevaluacion = "" ,$idevaluacion_t9 = "")

{
	
	/*if (empty($datevaluacion)){
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
				$this->db->update('ps_evaluacion_t9', $arr_evaluacion);
				return $idevaluacion_t9;
			}else {
				$this->db->insert('ps_evaluacion_t9', $arr_evaluacion);
				return $this->db->insert_id();
			}*/
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

		public function get($id_formato = "")
		{
			//$this->db->select('tituloformato_t6, categoria_t6,descripcion_t4,descripcion_t3,iditens_t10');
			$this->db->from('ps_categoria_for_t6');
			$this->db->join('ps_formato_t2', 'idformato_t2 = idformato_t6', 'inner');
			/*$this->db->join('ps_categoria_t8', 'idcategoria_t8 = idcategoria_t6', 'inner');
			$this->db->join('ps_subcategoria_t4', 'idcategoria_t4 = idcategoria_t8', 'inner');
			$this->db->join('ps_complementos_t3', 'idsubcategoria_t3 = idsubcategoria_t4', 'inner');
			$this->db->join('ps_categoria_items_t7', 'identificativo_t7 = idcomplementos_t3', 'inner');
			$this->db->join('ps_items_t10', 'idcomplemento_t10 = idcomplemento_t10', 'inner');
			*/$this->db->where('idformato_t2', $id_formato);
			$query = $this->db->get()->result();
			return $query;
		}

		public function subCategoria($id,$idformato)
		{
			$this->db->from('ps_categoria_for_t6');
			$this->db->join('ps_categoria_t8', 'idcategoria_t8 = idcategoria_t6', 'inner');
			$this->db->join('ps_subcategoria_t4', 'idcategoria_t4 = idcategoria_t8', 'inner');
			$this->db->where('idformato_t6', $idformato);
			$this->db->where('idrelacion_t6', $id);
			$query = $this->db->get()->result();
			return $query;
		}

		public function Complementario($id)
		{
			$this->db->from('ps_subcategoria_t4');
			$this->db->join('ps_complementos_t3', 'idsubcategoria_t3 = idsubcategoria_t4', 'inner');
			$this->db->join('ps_categoria_items_t7', 'complementario_t7 = idcomplementos_t3', 'inner');
			$this->db->join('ps_items_t10', 'iditens_t10 = identificativo_t7', 'inner');
			$this->db->where('idsubcategoria_t4', $id);
			$query = $this->db->get()->result();
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

		public function IniciarEvaluacion($id = "",$formato = "")
		{
			$eval = (object)$this->input->post();

			if (!empty($formato))$arr_evaluacion['idformato_t25'] = $formato;
			if (empty($id))$arr_evaluacion['finicio_t25'] = date('Y-m-d h:i:s');
			if (!empty($eval->finalizar))$arr_evaluacion['ffinal_t25'] = date('Y-m-d h:i:s');;
			if (!empty($eval->finalizar))$arr_evaluacion['tiempodil_t25'] = "";
			$arr_evaluacion['area_admin_t25'] = "";
			$arr_evaluacion['fmod_t25'] = date('Y-m-d h:i:s');;
			$arr_evaluacion['usrmod_t25'] = $eval->usrmod;

			$this->db->where('idps_eval_formato_t25', $id);
			$query = $this->db->get('ps_eval_formato_t25')->row();

			if (is_array($query)) {
				$this->db->where('idps_eval_formato_t25', $id);
				$this->db->update('ps_eval_formato_t25', $arr_evaluacion);
				return $id;
			}else{
				$this->db->insert('ps_eval_formato_t25', $arr_evaluacion);
				return $this->db->insert_id();
			}

		}
}

/* End of file Evaluacion.php */
/* Location: ./application/models/Evaluacion.php */