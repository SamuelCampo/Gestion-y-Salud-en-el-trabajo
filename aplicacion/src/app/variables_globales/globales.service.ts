import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class GlobalesService {

  constructor() { }


  url() {
  	const path = "http://tienda.hms.com.co/api/index.php/";
  	return path;
  }

  titulo(titulo){
  	titulo = titulo;
  	return titulo;
  }

  usr(){
    let arreglo = JSON.parse(localStorage.getItem('user'));
     return arreglo.cedula_t0;
  }
}
