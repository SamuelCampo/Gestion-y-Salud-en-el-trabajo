<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logins extends CI_Model {



		function validaUsuario($usuario_t0,$clave_t0){
		$query = $this->db->get_where('ps_usuario_t0', array('usuario_t0' => 'Miguelort095', 'clave_t0' => md5(123456789)),1);
		return $query->result();
	}


}

/* End of file Logins.php */
/* Location: ./application/models/Logins.php */