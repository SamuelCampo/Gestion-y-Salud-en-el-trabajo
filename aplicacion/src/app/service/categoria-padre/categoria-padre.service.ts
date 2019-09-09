import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { GlobalesService } from '../../variables_globales/globales.service';

@Injectable({
  providedIn: 'root'
})
export class CategoriaPadreService {

	base_url = "http://localhost/gestion/api/index.php/";
	headers = new HttpHeaders();
  	formData = new FormData();

  constructor(private http:HttpClient) {
  	
  }

  get(id:string){
  	this.formData.append('desc',id);
  	let path = this.base_url+"Categorias/Categoria/ver/"+id;
  	return this.http.get(path);
  }

  insert(arr_estructura,id:string){
  	console.log(arr_estructura);
  	this.formData.append('nombre_t8',arr_estructura.nombre_t8);
  	this.formData.append('n_identificador_t8',arr_estructura.n_identificador_t8);
  	let path = this.base_url+"Categorias/Categoria/gestionar/guardar/"+id;
  	return this.http.post<any>(path,this.formData,{headers:this.headers});
  }

  edit(){
  	
  }

  update(){
  	
  }

  delete(){
  	
  }
}
