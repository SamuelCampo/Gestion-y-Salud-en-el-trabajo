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
			if(!empty($datformato->categoria_t2))$arr_formato['categoria_t2'] =$datformato->categoria_t2;
			$arr_formato['fmod_t2'] = date('Y-m-d h:i:s');
			$arr_formato['usumod_t2'] = $datformato->usumod_t2;
			//var_dump($datformato);
			$this->db->where('idformato_t2', intval($datformato->idformato_t2));
			$query = $this->db->get('ps_formato_t2');
			if (count($query->result()) > 0) {
				$this->db->where('idformato_t2', intval($datformato->idformato_t2));
				 $this->db->update('ps_formato_t2', $arr_formato);
				$id = $datformato->idformato_t2;
			}else {
				return $this->db->insert('ps_formato_t2', $arr_formato);
				$id = $this->db->insert_id();
			}
			  $categoria = explode(',', $datformato->categorias);
			  //var_dump($categoria);
			  //echo count($categoria);
			  for ($i = 0; $i < count($categoria); $i++) {
			 	
			 	
			 $this->db->where('idcategoria_t8',$categoria[$i]);
			 $query = $this->db->get('ps_categoria_t8')->row();

			  $arr_relacion['idformato_t6'] = $id;
			  $arr_relacion['idcategoria_t6'] = $categoria[$i];
			  $arr_relacion['tituloformato_t6'] = $datformato->titulo_t2;
			  $arr_relacion['categoria_t6'] = $query->nombre_t8;
			  $arr_relacion['fmod_t6'] = date('Y-m-d h:i:s');
			  $arr_relacion['umod_t6'] = $datformato->usumod_t2;
			  $this->db->insert('ps_categoria_for_t6', $arr_relacion);
			  }
			  return true;

}	

	public function ConsultaFormato($idformato_t2 = "")
	{			
				$datformato = (object)$this->input->post();
				if (!empty($datformato->desc) && $datformato->desc != "undefined") {
					$this->db->like('titulo_t2',$datformato->desc,'both');
				}
				if (!empty($idformato_t2) && $idformato_t2 != "undefined") {
					$this->db->where('idformato_t2',$idformato_t2);
				}				
				$query = $this->db->get('ps_formato_t2');
				if (count($query->result()) > 1) {
						return $query->result();
				}else{
					return [$query->row()];
				}
	}

	public function DeleteFormato($idformato_t2)
		{
			return $this->db->where('idformato_t2', $idformato_t2)->delete('ps_formato_t2');
		}


}

/* End of file Formato.php */
/* Location: ./application/models/Formato.php */