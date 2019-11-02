import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Login } from '../interface/login';
import { GlobalesService } from '../variables_globales/globales.service';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  base_url = "http://tienda.hms.com.co/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();

  usuario_t0;
  clave_t0;
  IniciarSesion;
  constructor(private http:HttpClient, public global:GlobalesService) { }

  getConfig(id:string) {
   		const path = this.global.url()+"Login/validarSesion/"+id;
	  	return this.http.get(path);
	}
}
