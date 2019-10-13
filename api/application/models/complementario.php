<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Complementario extends CI_Model {

	public function RegistrarComplementario($idcomplementos_t3 = "",$datcomplementario = "")
	{
			if (empty($datcomplementario)){
				$datcomplementario = (object)$this->input->post();
			}
			$query = "";
			if(is_null($datcomplementario->valoracion_t3) === false)$arr_complementario['valoracion_t3'] = $datcomplementario->valoracion_t3;
			if(is_null($datcomplementario->descripcion_t3) === false)$arr_complementario['descripcion_t3'] = $datcomplementario->descripcion_t3;
			if(is_null($datcomplementario->n_identificativo_t3) === false)$arr_complementario['n_identificativo_t3'] = $datcomplementario->n_identificativo_t3;
			$arr_complementario['fmod_t3'] = date('Y-m-d h:i:s');
			$arr_complementario['usumod_t3'] = "super";
			if(is_null($datcomplementario->idsubcategoria_t3) === false)$arr_complementario['idsubcategoria_t3'] = $datcomplementario->idsubcategoria_t3;
			if(is_null($datcomplementario->idcategoria_t3) === false)$arr_complementario['idcategoria_t3'] = $datcomplementario->idcategoria_t3;

			if(!empty($idcomplementos_t3)){
				$query = $this->db->where('idcomplementos_t3', $idcomplementos_t3)->get('ps_complementos_t3');
				if ($query->result() > 0) {
					$this->db->where('idcomplementos_t3', $idcomplementos_t3);
					 $this->db->update('ps_complementos_t3', $arr_complementario);
					}
					$id = $idcomplementos_t3;
			}else{
				 $this->db->insert('ps_complementos_t3', $arr_complementario);
				 $id = $this->db->insert_id();
			}

			$categoria = explode(',', $datcomplementario->items);
			  //var_dump($categoria);
			  //echo count($categoria);
			 $this->db->where('complementario_t7', $id);
			 $this->db->delete('ps_categoria_items_t7');
			  for ($i = 0; $i < count($categoria); $i++) {	
			  $this->db->where('idcategoria_t8',$categoria[$i]);
			  $query = $this->db->get('ps_categoria_t8')->row();
			  $arr_relacion['identificativo_t7'] = $categoria[$i];
			  $arr_relacion['complementario_t7'] = $id;
			  $arr_relacion['fmod_t7'] = date('Y-m-d h:i:s');
			  $arr_relacion['usrmod_t7'] = "super";
			  $this->db->insert('ps_categoria_items_t7', $arr_relacion);
			  }
			  return true;
			
}

public function ConsultaComplementario($idcomplementos_t3 = "")
	{			
				$datsubcategoria = (object)$this->input->post();
				if (!empty($datsubcategoria->desc)) {
					$this->db->like('idcomplementos_t3',$datsubcategoria->desc,'both');
					$this->db->or_like('descripcion_t3',$datsubcategoria->desc,'both');
				}
				if (!empty($idcomplementos_t3) && $idcomplementos_t3 != "undefined") {
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
			$query = $this->db->where('idcomplementos_t3', $idcomplementos_t3)->delete('ps_complementos_t3');
			if ($query) {
				return true;
			}
		}

}
/* End of file complementario.php */
/* Location: ./application/models/complementario.php */