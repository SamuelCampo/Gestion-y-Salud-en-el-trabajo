import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ItemsService {
	base_url = "http://localhost/gestion/api/index.php/";
	headers = new HttpHeaders();
  	formData = new FormData();

  constructor(private http:HttpClient) { }

  get(id:string){
  	this.formData.append('desc',id);
  	let path = this.base_url+"Itens/Iten/ver/"+id;
    console.log(path);
  	return this.http.get(path);
  }

  insert(arr_estructura,id:string){
  	let headers = new HttpHeaders();
  	let formData = new FormData();
  	formData.append('nombre_t8',arr_estructura.nombre_t8);
  	formData.append('n_identificador_t8',arr_estructura.n_identificador_t8);
  	let path = this.base_url+"Categorias/Categoria/gestionar/guardar/"+id;
  	return this.http.post<any>(path,formData,{headers:headers});
  }

  delete(id){
  	let path = this.base_url+"Categorias/Categoria/delete/"+id;
    return this.http.delete(path);
  }
}
