import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { GlobalesService } from '../variables_globales/globales.service';

@Injectable({
  providedIn: 'root'
})
export class ComplementarioService {
  
  base_url = "http://tienda.hms.com.co/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();

  constructor(private http: HttpClient , public global:GlobalesService) { }

  buscar(id,desc){
  	if (desc) {
  		this.formData.append('desc',desc.desc);
  		return this.http.post<any>(this.global.url()+'Complementarios/Complementario/ver/'+id,this.formData,{headers:this.headers});	
  	}else if(id){
  		return this.http.get(this.global.url()+'Complementarios/Complementario/ver/'+id);
  	}else{
      return this.http.get(this.global.url()+'Complementarios/Complementario/ver/');
    }
  }

  insert(id,arr_estructura){
    this.formData.append('valoracion_t3',arr_estructura.valor);
    this.formData.append('descripcion_t3',arr_estructura.descripcion);
    this.formData.append('n_identificativo_t3',arr_estructura.identificativo);
    this.formData.append('items',arr_estructura.items);
    return this.http.post<any>(this.global.url()+'Complementarios/Complementario/gestionar/guardar/'+id,this.formData);

  }

  eliminarComplementario(id){
     return this.http.delete(this.global.url()+'Complementarios/Complementario/delete/'+id);
  }
}
