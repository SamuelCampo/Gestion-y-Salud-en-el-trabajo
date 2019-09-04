<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Seccion extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		$this->load->library('session');
		$this->ValidarSeccion();
	}

	

	function RegistrarSession($datseccion = "")
	{
		$datseccion = (object)$this->input->post();

		$arr_seccion['usuario_t5'] = $datseccion->usuario_t5;
		$arr_seccion['finicio_t5'] = date('Y-m-d h:i:s');
		$arr_seccion['fcierre_t5'] = date('Y-m-d h:i:s');
		$arr_seccion['estado_t5'] = "ACTIVO";


		return $this->db->insert('ps_seccion_t5', $arr_seccion);

	}

	function ValidarSession()
	{
		
		if ($this->session->userdata('idusuario')) {
			$seccion = $this->db->where('usuario_t5',$this->session->userdata('idusuario'))->where('estado_t5', "ACTIVO")->get('ps_seccion_t5')->row();
			if ($seccion->fcierre_t5 > date('Y-m-d h:i:s')) {
				$this->db->where('idseccion_t5', $seccion->idseccion_t5);
				$this->db->update('ps_seccion_t5', array('estado_t5' => 'CERRADO'));
				$this->session->sess_destroy();
				return false;
			}
		}else{

			$query = $this->db->where('usuario_t0' == $this->input->post('session'))->where('clave_t0' == $this->input->post('clave'))->get('ps_usuario_t0')->row();

			if (!empty($query)) {
				$newdata = array(
			        'iduser'  => $query
			);
			$this->session->set_userdata($newdata);
			}else{
				return 'ERROR DE USUARIO';
			}
		}
	}

}

/* End of file Seccion.php */
/* Location: ./application/models/Seccion.php */