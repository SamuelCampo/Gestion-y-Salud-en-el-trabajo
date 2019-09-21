<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categoria extends CI_Model {

	public function RegistrarCategoria($idcategoria_t8 = "",$datcategoria = "")
	{
	if (empty($datcategoria)){
			$datcategoria = (object)$this->input->post();
		}
			$query = "";
			if(!empty($datcategoria->nombre_t8))$arr_categoria['nombre_t8'] = $datcategoria->nombre_t8;
			if(!empty($datcategoria->n_identificador_t8))$arr_categoria['n_identificador_t8'] = $datcategoria->n_identificador_t8;
			$arr_categoria['fmod_t8'] = date('Y-m-d h:i:s');
			if(!empty($datcategoria->usumod_t8))$arr_categoria['usumod_t8'] = $datcategoria->usumod_t8;
			if(!empty($idcategoria_t8)){
				$query = $this->db->where('idcategoria_t8', $idcategoria_t8)->get('ps_categoria_t8');
				if ($query->result() > 0) {
					$this->db->where('idcategoria_t8', $idcategoria_t8);
					return $this->db->update('ps_categoria_t8', $arr_categoria);
					}
			}else{
				return $this->db->insert('ps_categoria_t8', $arr_categoria);
			}
			
}

public function ConsultaCategoria($idcategoria_t8 = "")
	{			
				$datcategoria = (object)$this->input->post();
				if (!empty($datcategoria->desc) && $datcategoria->desc != "undefined" && $datcategoria->desc != "null") {
					$this->db->or_like('nombre_t8',$datcategoria->desc,'both');
				}
				if (!empty($idcategoria_t8) && $idcategoria_t8 != "undefined" && $idcategoria_t8 != "null") {
					$this->db->where('idcategoria_t8',$idcategoria_t8);
				}
				$query = $this->db->get('ps_categoria_t8');
				if (count($query->result()) > 1) {
					return $query->result();
				}else{
					return [$query->row()];
				}
	}

public function DeleteCategoria($idcategoria_t8)
		{
			return $this->db->where('idcategoria_t8', $idcategoria_t8)->delete('ps_categoria_t8');
		}	

}

/* End of file Categoria.php */
/* Location: ./application/models/Categoria.php */