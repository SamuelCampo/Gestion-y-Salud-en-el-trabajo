import { Injectable } from '@angular/core';
import { GlobalesService } from '../../variables_globales/globales.service';
import { HttpClient , HttpHeaders} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class InspeccionService {

	base_url = "http://tienda.hms.com.co/index.php/";
 	headers = new HttpHeaders();
  	formData = new FormData();

  constructor(private http:HttpClient, public global:GlobalesService) 
  { }

  	getConfig(id:string) {
   		const path = this.global.url()+"Inspecciones/Inspeccion/ver/"+id;
	  	return this.http.get(path);
	}

	guardarInspeccion(arr_inspeccion){
		let headers = new HttpHeaders();
	    let formData = new FormData();
	    //console.log(arr_usuario.nombre1);
	    formData.append('plan_accion_t28',arr_inspeccion.plan_accion_t28);
	    formData.append('varlorItems_t28',arr_inspeccion.varlorItems_t28);
	    formData.append('fecha_t28',arr_inspeccion.fecha_t28);
	    formData.append('cargo_t28',arr_inspeccion.cargo_t28);
	    console.log(arr_inspeccion);
   		const path = this.global.url()+"Inspecciones/Inspeccion/gestionar/guardar/"+arr_inspeccion.idinspeccion_t28;
	  	return this.http.post<any>(path, formData,{headers:headers});
	}

}
