<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logins extends CI_Model {



		function validaUsuario($usuario_t0,$clave_t0){
		//var_dump($this->input->post());
		$this->db->where('usuario_t0', $this->input->post('usuario_t0'));
		$this->db->where('clave_t0', md5($this->input->post('clave_t0')));
		$query = $this->db->get('ps_usuario_t0');
		return $query->row();
	}


}

/* End of file Logins.php */
/* Location: ./application/models/Logins.php */