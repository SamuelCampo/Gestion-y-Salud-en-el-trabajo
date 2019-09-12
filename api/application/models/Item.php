<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Item extends CI_Model {

	public function RegistrarItems($arr_itens = "" ,$iditens_t3 = "")

{
	if (empty($arr_itens)){
			$arr_itens = (object)$this->input->post();
		}

			$arr_itens['idcategoria_t3'] = $datitens->idcategoria_t3;
			$arr_itens['fmod_t3'] = date('Y-m-d h:i:s');
			$arr_itens['usumod_t3'] = $arr_itens->usumod_t3;
			if(!empty($datitens->n_identificativo_t3))$arr_itens['n_identificativo_t3'] = $datitens->n_identificativo_t3;
			if(!empty($datitens->marco_legal_t3))$arr_itens['marco_legal_t3'] = $datitens->marco_legal_t3;
			if(!empty($datitens->criterio_t3))$arr_itens['criterio_t3'] = $datitens->criterio_t3;
			if(!empty($datitens->mo_verificacion_t3))$arr_itens['mo_verificacion_t3'] = $datitens->mo_verificacion_t3;
			if(!empty($datitens->puntuaje_t3))$arr_itens['puntuaje_t3'] = $datitens->puntuaje_t3;
			if(!empty($datitens->valoracion_t3))$arr_itens['valoracion_t3'] = $datitens->valoracion_t3;

			$this->db->where('iditens_t3', $iditens_t3);
			$query = $this->db->get('ps_itens_t3');
			if ($query->row() > 0) {
				$this->db->where('iditens_t3', $iditens_t3);
				return $this->db->update('ps_itens_t3', $arr_itens);
			}else {
				return $this->db->insert('ps_itens_t3', $arr_itens);
			}
}

	public function ConsultaItems($iditens_t3 = "")
	{			
			$datitens = (object)$this->input->post();
				if (!empty($datitens->id)) {
					$this->db->like('iditens_t3',$datitens->id,'both');
				}
				if (!empty($datitens->id)) {
					$this->db->or_like('n_identificativo_t3',$datitens->id,'both');
				}
				$query = $this->db->get('ps_itens_t3');
				if ($query->result() > 0) {
					return $query->result();
				}
	}

	public function DeleteItems($iditens_t3)
		{
			return $this->db->where('iditens_t3', $iditens_t3)->delete('ps_itens_t3');
		}

}

/* End of file Items.php */
/* Location: ./application/models/Items.php */