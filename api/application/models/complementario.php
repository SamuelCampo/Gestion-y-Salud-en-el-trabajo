<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Complementario extends CI_Model {

	public function RegistrarComplementario($idcomplementos_t3 = "",$datcomplementario = "")
	{
	if (empty($datsubcategoria)){
			$datsubcategoria = (object)$this->input->post();
		}
			$query = "";
			$arr_complementario['valoracion_t3'] = $datcomplementario->valoracion_t3;
			$arr_complementario['descripcion_t3'] = $datcomplementario->descripcion_t3;
			$arr_complementario['n_identificativo_t3'] = $datcomplementario->n_identificativo_t3;
			$arr_complementario['fmod_t3'] = date('Y-m-d h:i:s');
			$arr_complementario['usumod_t3'] = $datcomplementario->usumod_t3;
			$arr_complementario['idsubcategoria_t3'] = $datcomplementario->idsubcategoria_t3;
			$arr_complementario['idcategoria_t3'] = $datcomplementario->idcategoria_t3;

			if(!empty($idcomplementos_t3)){
				$query = $this->db->where('idcomplementos_t3', $idcomplementos_t3)->get('ps_complementos_t3');
				if ($query->result() > 0) {
					$this->db->where('idcomplementos_t3', $idcomplementos_t3);
					return $this->db->update('ps_complementos_t3', $arr_complementario);
					}
			}else{
				return $this->db->insert('ps_complementos_t3', $arr_complementario);
			}
			
}

public function ConsultaComplementario($idcomplementos_t3 = "")
	{			
				$datsubcategoria = (object)$this->input->post();
				if (!empty($datsubcategoria->desc)) {
					$this->db->like('idcomplementos_t3',$datsubcategoria->desc,'both');
					$this->db->or_like('descripcion_t4',$datsubcategoria->desc,'both');
				}
				if (!empty($idcomplementos_t3)) {
					$this->db->where('idcomplementos_t3', $idcomplementos_t3);
				}
				$query = $this->db->get('ps_complementos_t3');
				if (count($query->result()) > 1) {
					return $query->result();
				}else{
					return [$query->row()];
				}
	}

public function DeleteComplementario($idcomplementos_t3)
		{
			return $this->db->where('idcomplementos_t3', $idcomplementos_t3)->delete('ps_complementos_t3');
		}

}


}

/* End of file complementario.php */
/* Location: ./application/models/complementario.php */