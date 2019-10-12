import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ComplementarioService {
  
  base_url = "http://localhost/gestion/api/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();

  constructor(private http: HttpClient) { }

  buscar(id,desc){
  	console.log(desc);
  	if (id || desc) {
  		this.formData.append('desc',desc.desc);
  		return this.http.post<any>(this.base_url+'Complementarios/Complementario/ver/'+id,this.formData,{headers:this.headers});	
  	}else{
  		return this.http.get(this.base_url+'Complementarios/Complementario/ver/');
  	}
  }

  insert(id,arr_estructura){
    this.formData.append('valoracion_t3',arr_estructura.valor);
    this.formData.append('descripcion_t3',arr_estructura.descripcion);
    this.formData.append('n_identificativo_t3',arr_estructura.identificativo);
    this.formData.append('items',arr_estructura.items);
    return this.http.post<any>(this.base_url+'Complementarios/Complementario/gestionar/guardar/'+id,this.formData);

  }
}
