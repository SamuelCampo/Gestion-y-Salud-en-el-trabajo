<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formato extends CI_Model {

public function RegistrarFormato($datformato)
{
	$datformato = (object)$this->input->post();

	$arr_formato['titulo_t2'] = $datformato->titulo_t2;
	$arr_formato['descripcion_t2'] = $datformato->descripcion_t2;
	$arr_formato['fmod_t2'] = date('Y-m-d');
	$arr_formato['usumod_t2'] = $datformato->usumod_t2;
	$this->db->where('idformato_t2', $datformato->idformato_t2);
			$query = $this->db->get('ps_formato_t2');
			if ($query->row() > 0) {
				$this->db->where('idformato_t2', $datformato->idformato_t2);
				return $this->db->update('ps_formato_t2', $arr_formato);

			}else {
				return $this->db->insert('ps_formato_t2', $arr_formato);
			}
}	

}

/* End of file Formato.php */
/* Location: ./application/models/Formato.php */