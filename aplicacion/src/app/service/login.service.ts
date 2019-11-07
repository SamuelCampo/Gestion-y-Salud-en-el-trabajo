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

  getConfig(arr_login:Login) {
    this.formData.append('usuario',arr_login.usuario_t0);
    this.formData.append('clave',arr_login.clave_t0);

    this.headers.append('Access-Control-Allow-Origin','*');
	  return this.http.post(this.global.url()+"Login/validarSesion/guardar",this.formData,{headers:this.headers});
	}

	
}
