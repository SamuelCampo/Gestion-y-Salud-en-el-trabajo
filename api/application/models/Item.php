<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Item extends CI_Model {

	public function RegistrarItems($iditens_t3 = ""){
			if (empty($datitens)){
					$datitens = (object)$this->input->post();
				}
				$query[] = "";

				if(!empty($datitens->marco_legal_t3))$arr_itens['idcategoria_t10'] = $datitens->idcategoria_t3;
				$arr_itens['fmod_t10'] = date('Y-m-d h:i:s');
				if(!empty($datitens->usumod_t3))$arr_itens['usumod_t10'] = $datitens->usumod_t3;
				if(!empty($datitens->n_identificativo_t3))$arr_itens['n_identificativo_t10'] = $datitens->n_identificativo_t3;
				if(!empty($datitens->marco_legal_t3))$arr_itens['marco_legal_t10'] = $datitens->marco_legal_t3;
				if(!empty($datitens->criterio_t3))$arr_itens['criterio_t10'] = $datitens->criterio_t3;
				if(!empty($datitens->mo_verificacion_t3))$arr_itens['mo_verificacion_t10'] = $datitens->mo_verificacion_t3;
				if(!empty($datitens->puntuaje_t3))$arr_itens['puntuaje_t10'] = $datitens->puntuaje_t3;
				if(!empty($datitens->valoracion_t3))$arr_itens['valoracion_t10'] = $datitens->valoracion_t3;
				$query = $this->db->where('iditens_t10', $iditens_t3)->get('ps_items_t10');
				if ($query->num_rows() > 0) {
					$this->db->where('iditens_t10', $iditens_t3);
					return $this->db->update('ps_items_t10', $arr_itens);
				}else {
					return $this->db->insert('ps_items_t10', $arr_itens);
				}
	}

	public function ConsultaItems($iditens_t3 = "")
	{			
				if (!empty($iditens_t3)) {
					$this->db->like('iditens_t10',$iditens_t3,'both');
				}
				if (!empty($datitens->id)) {
					$this->db->or_like('n_identificativo_t10',$iditens_t3,'both');
				}
				$query = $this->db->get('ps_items_t10');
				if ($query->result() > 0) {
					return $query->result();
				}
	}

	public function DeleteItems($iditens_t3)
		{
			return $this->db->where('iditens_t10', $iditens_t3)->delete('ps_items_t10');
		}

}

/* End of file Items.php */
/* Location: ./application/models/Items.php */