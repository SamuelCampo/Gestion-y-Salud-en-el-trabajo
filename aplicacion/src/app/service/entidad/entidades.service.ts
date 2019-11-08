import { Injectable } from '@angular/core';
import { Entidad } from '../../interface/entidad';
import { GlobalesService } from '../../variables_globales/globales.service';
import { HttpClient , HttpHeaders} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class EntidadesService {

	base_url = "http://tienda.hms.com.co/index.php/";
 	headers = new HttpHeaders();
  	formData = new FormData();

  constructor(private http:HttpClient, public global:GlobalesService) 
  { }

  	getConfig(id:string) {
   		const path = this.global.url()+"Entidad/Entidades/ver/"+id;
	  	return this.http.get(path);
	}

	guardarEntidad(arr_entidad){
		let headers = new HttpHeaders();
	    let formData = new FormData();
	    //console.log(arr_usuario.nombre1);
	    formData.append('nombre_t12',arr_entidad.nombre_t12);
	    formData.append('nit_t12',arr_entidad.nit_t12);
	    formData.append('responsable_t12',arr_entidad.responsable_t12);
	    formData.append('telefono_t12',arr_entidad.telefono_t12);
	    formData.append('correo_t12',arr_entidad.correo_t12);
	    formData.append('direccion_t12',arr_entidad.direccion_t12);
	    console.log(arr_entidad);
   		const path = this.global.url()+"Entidad/Entidades/gestionar/guardar/"+arr_entidad.nit_t12;
	  	return this.http.post<any>(path, formData,{headers:headers});
	}

	eliminarEntidad(id){
		let path = this.global.url()+"Entidad/Entidades/delete/"+id;
		console.log(path);
    return this.http.delete(path);
	}

	
}
