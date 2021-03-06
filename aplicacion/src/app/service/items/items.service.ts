import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { GlobalesService } from '../../variables_globales/globales.service';

@Injectable({
  providedIn: 'root'
})
export class ItemsService {
	base_url = "http://tienda.hms.com.co/index.php/";
	headers = new HttpHeaders();
  formData = new FormData();

  constructor(private http:HttpClient , public global:GlobalesService) { }

  getItems(id:string){
  	let path = this.global.url()+"Items/Item/ver/"+id;
    console.log(path);
  	return this.http.get(path);
  }

  insert(arr_estructura,id:string){
    this.formData.append('n_identificativo_t3',arr_estructura.n_identificativo_t3);
    this.formData.append('marco_legal_t3',arr_estructura.marco_legal_t3);
    this.formData.append('criterio_t3',arr_estructura.criterio_t3);
    this.formData.append('mo_verificacion_t3',arr_estructura.mo_verificacion_t3);
    let path = this.global.url()+"Items/Item/gestionar/guardar/"+id;
    console.log(path);
  	return this.http.post<any>(path,this.formData,{headers:this.headers});
  }

  deleteItems(id){
  	let path = this.global.url()+"Items/Item/delete/"+id;
    return this.http.delete(path);
  }
}
