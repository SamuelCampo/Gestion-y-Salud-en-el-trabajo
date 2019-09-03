import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Usuario } from '../interface/usuario';

@Injectable({
  providedIn: 'root'
})
export class ConfiguracionService {

	

  constructor(private http:HttpClient) {
  	
   }


   getConfig() {
   		const path = "http://localhost/gestion/api/index.php/registrar/usuario/ver";
	  	return this.http.get(path);
	}

	guardarUsuario(arr_usuario) {
		let headers = new HttpHeaders();
	    let formData = new FormData();
	    formData.append('primer_nombre_t0',arr_usuario.nombre1);
	    formData.append('segundo_nombre_t0',arr_usuario.nombre2);
	    formData.append('primer_apellido_t0',arr_usuario.apellido1);
	    formData.append('segundo_apellido_t0',arr_usuario.apellido2);
	    formData.append('usuario_t0',arr_usuario.cedula);
	    formData.append('telefono_t0',arr_usuario.telefono);
	    formData.append('direccion_t0',arr_usuario.direccion);
	    formData.append('clave_t0',arr_usuario.clave);
	    formData.append('cedula_t0',arr_usuario.cedula);
	    
   		const path = "http://localhost/gestion/api/index.php/registrar/usuario/";
	  	return this.http.post(path, formData,{headers:headers});
	}
}
