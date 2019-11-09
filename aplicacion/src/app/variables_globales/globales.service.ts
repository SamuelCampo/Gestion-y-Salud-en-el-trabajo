import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class GlobalesService {

  constructor() { }


  url() {
  	const path = "http://localhost/gestion/api/index.php/";
  	return path;
  }

  titulo(titulo){
  	titulo = titulo;
  	return titulo;
  }

  getFormato(){
    return localStorage.getItem('idformato');
  }

  insertFormato(id){
    localStorage.setItem('idformato',id);
  }

  usr(){
    let arreglo = JSON.parse(localStorage.getItem('user'));
     return arreglo.cedula_t0;
  }
}
