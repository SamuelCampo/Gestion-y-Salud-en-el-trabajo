import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { GlobalesService } from '../../variables_globales/globales.service';

@Injectable({
  providedIn: 'root'
})
export class CategoriaPadreService {

	base_url = "http://tienda.hms.com.co/index.php/";
	headers = new HttpHeaders();
  	formData = new FormData();

  constructor(private http:HttpClient) {
  	
  }

  buscar(){
    let path = this.base_url+"Categorias/Categoria/ver/";
    return this.http.get(path);
  }

  listar(arr_categoria,id:string){
  	this.formData.append('desc',arr_categoria.desc);
  	let path = this.base_url+"Categorias/Categoria/ver/"+id;
    console.log(path);
  	return this.http.post<any>(path,this.formData,{headers:this.headers});
  }

  insert(arr_estructura,id:string){
  	let headers = new HttpHeaders();
  	let formData = new FormData();
  	formData.append('nombre_t8',arr_estructura.nombre_t8);
  	formData.append('n_identificador_t8',arr_estructura.n_identificador_t8);
    formData.append('subcategoria',arr_estructura.subcategoria);
  	let path = this.base_url+"Categorias/Categoria/gestionar/guardar/"+id;
  	return this.http.post<any>(path,formData,{headers:headers});
  }

  delete(id){
  	let path = this.base_url+"Categorias/Categoria/delete/"+id;
    return this.http.delete(path);
  }
}
