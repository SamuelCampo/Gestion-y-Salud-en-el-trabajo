<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Iten extends CI_Model {

	public function RegistrarIten($datitens)
{
	$datitens = (object)$this->input->post();

	$arr_itens['idcategoria_t3'] = $datitens->idcategoria_t3;
	$arr_itens['fmod_t3'] = date('Y-m-d');
	$arr_itens['usumod_t3'] = $datformato->usumod_t3;
	$arr_itens['n_identificativo_t3'] = $datitens->n_identificativo_t3;
	$arr_itens['marco_legal_t3'] = $datitens->marco_legal_t3;
	$arr_itens['criterio_t3'] = $datitens->criterio_t3;
	$arr_itens['mo_verificacion_t3'] = $datitens->mo_verificacion_t3;
	$arr_itens['puntuaje_t3'] = $datitens->puntuaje_t3;
	$arr_itens['valoracion_t3'] = $datitens->valoracion_t3;

	$this->db->where('iditens_t3', $datitens->iditens_t3);
			$query = $this->db->get('ps_itens_t321');
			if ($query->row() > 0) {
				$this->db->where('iditens_t3', $datitens->iditens_t3);
				return $this->db->update('ps_itens_t321', $arr_itens);

			}else {
				return $this->db->insert('ps_itens_t321', $arr_itens);
			}
}

}

/* End of file Itens.php */
/* Location: ./application/models/Itens.php */