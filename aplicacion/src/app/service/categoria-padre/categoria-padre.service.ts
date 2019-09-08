import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { GlobalesService } from '../../variables_globales/globales.service';

@Injectable({
  providedIn: 'root'
})
export class CategoriaPadreService {

	base_url = "http://localhost/gestion/api/index.php/";

  constructor(private http:HttpClient) {
  	
  }

  get(){

  }

  insert(arr_estructura,id:string){
  	let headers = new HttpHeaders();
  	let formData = new FormData();
  	formData.append('nombre_t8','nombre_t8');
  	formData.append('n_identificador_t8','n_identificador_t8');
  	let path = this.base_url+"Categorias/Categoria/gestion/guardar"+id;
  	return this.http.post<any>(path,formData,{headers:headers});
  }

  edit(){
  	
  }

  update(){
  	
  }

  delete(){
  	
  }
}
