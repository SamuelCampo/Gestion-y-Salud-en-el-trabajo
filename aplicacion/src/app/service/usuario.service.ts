import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Usuario } from '../interface/usuario';


@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  base_url = "http://tienda.hms.com.co/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();

  constructor(private http:HttpClient) { }


  getConfig(id:string) {
   		const path = "http://tienda.hms.com.co/index.php/registrar/usuario/ver/"+id;
	  	return this.http.get(path);
	}

	guardarUsuario(arr_usuario){
		let headers = new HttpHeaders();
	    let formData = new FormData();
	    //console.log(arr_usuario.nombre1);
	    formData.append('primer_nombre_t0',arr_usuario.primer_nombre_t0);
	    formData.append('segunda_nombre_t0',arr_usuario.segunda_nombre_t0);
	    formData.append('primer_apellido_t0',arr_usuario.primer_apellido_t0);
	    formData.append('segundo_apellido_t0',arr_usuario.segundo_apellido_t0);
	    formData.append('usuario_t0',arr_usuario.usuario_t0);
	    formData.append('telefono_t0',arr_usuario.telefono_t0);
	    formData.append('direccion_t0',arr_usuario.direccion_t0);
	    formData.append('clave_t0',arr_usuario.clave_t0);
	    formData.append('cedula_t0',arr_usuario.cedula_t0);
	    formData.append('cargo_t0',arr_usuario.cargo_t0);
	    formData.append('roll_t0',arr_usuario.roll_t0);
	    console.log(arr_usuario);
   		const path = "http://tienda.hms.com.co/index.php/registrar/usuario/gestionar/guardar/"+arr_usuario.cedula_t0;
	  	return this.http.post<any>(path, formData,{headers:headers});
	}

	eliminarUsuario(id){
		let path = this.base_url+"Registrar/usuario/delete/"+id;
    return this.http.delete(path);
	}
}



