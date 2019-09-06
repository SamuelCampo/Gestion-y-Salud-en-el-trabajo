<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formato extends CI_Model {

public function RegistrarFormato($datformato = "" ,$idformato_t2 = "")
{
	if (empty($datformato)){
			$datformato = (object)$this->input->post();
		}
			if(!empty($datformato->titulo_t2))$arr_formato['titulo_t2'] = $datformato->titulo_t2;
			if(!empty($datformato->descripcion_t2))$arr_formato['descripcion_t2'] = $datformato->descripcion_t2;
			$arr_formato['categoria_t2'] =$datformato->categoria;
			$arr_formato['fmod_t2'] = date('Y-m-d h:i:s');
			$arr_formato['usumod_t2'] = $datformato->usumod_t2;
			$this->db->where('idformato_t2', $idformato_t2);
			$query = $this->db->get('ps_formato_t2');
			if ($query->row() > 0) {
				$this->db->where('idformato_t2', $idformato_t2);
				return $this->db->update('ps_formato_t2', $arr_formato);
			}else {
				return $this->db->insert('ps_formato_t2', $arr_formato);
			}
}	

	public function ConsultaFormato($idformato_t2 = "")
	{			
				$datformato = (object)$this->input->post();
				if (!empty($datformato->id)) {
					$this->db->like('idformato_t2',$datformato->id,'both');
				}
				if (!empty($datformato->id)) {
					$this->db->or_like('titulo_t2',$datformato->id,'both');
				}
				$query = $this->db->get('ps_formato_t2');
				if ($query->result() > 0) {
					return $query->result();
				}
	}

	public function DeleteFormato($idformato_t2)
		{
			return $this->db->where('idformato_t2', $idformato_t2)->delete('ps_formato_t2');
		}


}

/* End of file Formato.php */
/* Location: ./application/models/Formato.php */