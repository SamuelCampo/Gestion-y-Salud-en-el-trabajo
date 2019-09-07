import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Usuario } from '../interface/usuario';

@Injectable({
  providedIn: 'root'
})
export class ConfiguracionService {

	base_url = "http://localhost/gestion/api/index.php/";

  constructor(private http:HttpClient) {
  	
   }


   getConfig() {
   		const path = "http://localhost/gestion/api/index.php/registrar/usuario/ver";
	  	return this.http.get(path);
	}

	guardarUsuario(arr_usuario:Usuario) {
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
	    console.log(arr_usuario);
   		const path = "http://localhost/gestion/api/index.php/registrar/usuario/gestionar/guardar";
	  	return this.http.post<any>(path, formData,{headers:headers});
	}

	guardarformato(arr_formato){
		let headers = new HttpHeaders();
		let formData = new FormData();
		formData.append('titulo_t2',arr_formato.titulo_t2);
		formData.append('descripcion_t2',arr_formato.descripcion_t2);
		if (arr_formato.idformato) {
		formData.append('idformato_t2',arr_formato.descripcion_t2);	
		}
		formData.append('usumod_t2','superusuario');
		let path = this.base_url+"Formatos/Formato/gestionar/guardar";
		return this.http.post<any>(path,formData,{headers:headers})
	}

	consultarformato(id:string){
		let headers = new HttpHeaders();
		let formData = new FormData();
		formData.append('id',id);
		let path = this.base_url+"Formatos/Formato/ver/{id}";
		return this.http.post<any>(path,formData,{headers:headers})
	}

	eliminarFormato(id:string){
		let headers = new HttpHeaders();
		let formData = new FormData();
		let path = this.base_url+"Formatos/Formato/";
	}

	registrarCategoria(arr_categoria){
		let headers = new HttpHeaders();
		let formData = new FormData();
		let path = this.base_url+'Categorias/Categoria/gestionar/guardar/{arr_categoria.id}';
		formData.append('descripcion_t4',arr_categoria.descripcion_t4);
		formData.append('n_identificador_t4',arr_categoria.n_identificador_t4);
		return this.http.post<any>(path,formData,{headers:headers});
	}

	consultarCategoria(id:string){
		let headers = new HttpHeaders();
		let formData = new FormData();
		console.log(id);
		formData.append('id',id);
		let path = this.base_url+'Categorias/Categoria/ver/{id}';
		return this.http.post<any>(path,formData,{headers:headers});
	}
}
