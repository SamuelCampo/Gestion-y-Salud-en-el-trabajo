<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Subcategoria extends CI_Model {

	public function RegistrarSubcategoria($idcategoria_t4 = "",$datsubcategoria = "")
	{
	if (empty($datsubcategoria)){
			$datsubcategoria = (object)$this->input->post();
		}
			$query = "";
			if(!empty($datsubcategoria->valor_total_t4))$arr_subcategoria['valor_total_t4'] = $datsubcategoria->valor_total_t4;
			if(!empty($datsubcategoria->descripcion_t4))$arr_subcategoria['descripcion_t4'] = $datsubcategoria->descripcion_t4;
			if(!empty($datsubcategoria->n_identificador_t4))$arr_subcategoria['n_identificador_t4'] = $datsubcategoria->n_identificador_t4;
			//if(!empty($datsubcategoria->idcategoria_t4))$arr_subcategoria['idcategoria_t4'] = $datsubcategoria->idcategoria_t4;
			$arr_subcategoria['fmod_t4'] = date('Y-m-d h:i:s');
			if(!empty($datsubcategoria->usumod_t4))$arr_subcategoria['usumod_t4'] = $datsubcategoria->usumod_t4;
			if(!empty($idcategoria_t4)){
				$query = $this->db->where('idsubcategoria_t4', $idcategoria_t4)->get('ps_subcategoria_t4');
				if ($query->result() > 0) {
					$this->db->where('idsubcategoria_t4', $idcategoria_t4);
					$this->db->update('ps_subcategoria_t4', $arr_subcategoria);
					$id = $idcategoria_t4;
					}
			}else{
				$this->db->insert('ps_subcategoria_t4', $arr_subcategoria);
				$id = $this->db->insert_id();
			}

			$cmple = explode(',', $datsubcategoria->cmpl);
			$this->db->where_in('idsubcategoria_t3', $id);
			 $this->db->update('ps_complementos_t3', array('idsubcategoria_t3' => 'NULL'));
			  for ($i = 0; $i < count($cmple); $i++) {	
			    $this->db->where('idcomplementos_t3', $cmple[$i]);
			 	$this->db->update('ps_complementos_t3', array('idsubcategoria_t3' => $id));
			  }
			
}

public function ConsultaSubcategoria($idcategoria_t4 = "")
	{			
				$datsubcategoria = (object)$this->input->post();
				if (!empty($datsubcategoria->desc)) {
					$this->db->where('idsubcategoria_t4', $idcategoria_t4);
					$this->db->or_like('descripcion_t4',$datsubcategoria->desc,'both');
				}
				if (!empty($idcategoria_t4)) {
					$this->db->where('idsubcategoria_t4', $idcategoria_t4);
				}
				$query = $this->db->get('ps_subcategoria_t4');
				if (count($query->result()) > 1) {
					return $query->result();
				}else{
					return [$query->row()];
				}
	}

public function DeleteSubcategoria($idcategoria_t4)
		{
			return $this->db->where('idcategoria_t4', $idcategoria_t4)->delete('ps_subcategoria_t4');
		}

}

/* End of file Subcategoria.php */
/* Location: ./application/models/Subcategoria.php */