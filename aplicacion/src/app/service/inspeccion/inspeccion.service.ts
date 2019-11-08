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
}
