<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categoria extends CI_Model {

	public function RegistrarCategoria($datcategoria = "" ,$idcategoria_t4 = "")
	{
	if (empty($datcategoria)){
			$datcategoria = (object)$this->input->post();
		}
			if(!empty($datcategoria->valor_total_t4))$arr_categoria['valor_total_t4'] = $datcategoria->valor_total_t4;
			if(!empty($datcategoria->descripcion_t4))$arr_categoria['descripcion_t4'] = $datcategoria->descripcion_t4;
			if(!empty($datcategoria->n_identificador_t4))$arr_categoria['n_identificador_t4'] = $datcategoria->n_identificador_t4;
			$arr_categoria['fmod_t4'] = date('Y-m-d h:i:s');
			$arr_categoria['usumod_t4'] = $datcategoria->usumod_t4;
			$this->db->where('idcategoria_t4', $idcategoria_t4);
			$query = $this->db->get('ps_categoria_t4');
			if ($query->row() > 0) {
				$this->db->where('idcategoria_t4', $idcategoria_t4);
				return $this->db->update('ps_categoria_t4', $arr_categoria);
			}else {
				return $this->db->insert('ps_categoria_t4', $arr_categoria);
			}
}

public function ConsultaCategoria($idcategoria_t4 = "")
	{			
				$datcategoria = (object)$this->input->post();
				if (!empty($datcategoria->id)) {
					$this->db->like('idcategoria_t4',$datcategoria->id,'both');
				}
				if (!empty($datcategoria->id)) {
					$this->db->or_like('n_identificador_t4',$datcategoria->id,'both');
				}
				$query = $this->db->get('ps_categoria_t4');
				if ($query->result() > 0) {
					return $query->result();
				}
	}

public function DeleteCategoria($idcategoria_t4)
		{
			return $this->db->where('idcategoria_t4', $idcategoria_t4)->delete('ps_categoria_t4              ');
		}

}

/* End of file Categoria.php */
/* Location: ./application/models/Categoria.php */