import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Usuario,updateUsuario } from '../interface/usuario';

@Injectable({
  providedIn: 'root'
})
export class ConfiguracionService {

	base_url = "http://tienda.hms.com.co/index.php/";

  constructor(private http:HttpClient) {}

   getConfig() {
   		const path = "http://tienda.hms.com.co/index.php/registrar/usuario/ver";
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
   		const path = "http://tienda.hms.com.co/index.php/registrar/usuario/gestionar/guardar";
	  	return this.http.post<any>(path, formData,{headers:headers});
	}

	guardarformato(arr_formato,categorias){
		console.log(arr_formato);
		let headers = new HttpHeaders();
		let formData = new FormData();
		formData.append('titulo_t2',arr_formato.titulo_t2);
		formData.append('descripcion_t2',arr_formato.descripcion_t2);
		if (arr_formato.id) {
		formData.append('idformato_t2',arr_formato.id);	
		}
		if (categorias) {
			formData.append('categorias',categorias)
		}
		formData.append('usumod_t2','superusuario');
		let path = this.base_url+"Formatos/Formato/gestionar/guardar";
		console.log(formData);
		return this.http.post<any>(path,formData,{headers:headers})
	}

	consultarformato(arr_formato,id:string){
		let headers = new HttpHeaders();
		let formData = new FormData();
		formData.append('desc',arr_formato.id);
		let path = this.base_url+"Formatos/Formato/ver/"+id;
		console.log(path);
		return this.http.post<any>(path,formData,{headers:headers})
	}

	eliminarFormato(id:string){
		let headers = new HttpHeaders();
		let formData = new FormData();
		let path = this.base_url+"Formatos/Formato/delete/"+id;
		return this.http.delete(path);
	}

	RegistrarSubcategoria(arr_subcategoria,id:string){
		//console.log(arr_subcategoria);
		let headers = new HttpHeaders();
		let formData = new FormData();
		let path = this.base_url+'Subcategorias/Subcategoria/gestionar/guardar/'+id;
		console.log(path);
		formData.append('descripcion_t4',arr_subcategoria.descripcion_t4);
		formData.append('n_identificador_t4',arr_subcategoria.n_identificador_t4);
		formData.append('valor_total_t4',arr_subcategoria.valor_total_t4);
		formData.append('idcategoria_t4',arr_subcategoria.idcategoria);
		formData.append('cmpl',arr_subcategoria.cmpl);
		return this.http.post<any>(path,formData,{headers:headers});
	}

	ConsultaSubcategoria(id:string){
		let headers = new HttpHeaders();
		let formData = new FormData();
		formData.append('desc',id);
		let path = this.base_url+'Subcategorias/Subcategoria/ver/'+id;
		return this.http.post<any>(path,formData,{headers:headers});
	}

	getSubcategoria(id:string){
		let path = this.base_url+'Subcategorias/Subcategoria/ver/'+id;
		return this.http.get(path);
	}

	eliminarCategoria(id:string){
		let headers = new HttpHeaders();
		let formData = new FormData();
		let path = this.base_url+'Subcategorias/Subcategoria/delete/'+id;
		return this.http.delete(path);
	}
}
