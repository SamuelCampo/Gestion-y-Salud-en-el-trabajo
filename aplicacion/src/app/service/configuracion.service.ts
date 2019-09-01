import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ConfiguracionService {

	

  constructor(private http:HttpClient) {
  	
   }


   getConfig() {
   		const path = "http://localhost/gestion/api/index.php/registrar/usuario/ver";
	   	let headers = new HttpHeaders();
    	headers = headers.set("Content-Type", "application/x-www-form-urlencoded");
	  	return this.http.get(path);
	}
}
