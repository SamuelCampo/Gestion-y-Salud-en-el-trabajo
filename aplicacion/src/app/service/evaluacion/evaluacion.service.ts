import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Evaluacion,Fmto_evaluacion } from '../../interface/evaluacion'
import { GlobalesService } from '../../variables_globales/globales.service';
import { ItemsVal } from '../../interface/items-val';

@Injectable({
  providedIn: 'root'
})
export class EvaluacionService {
  headers = new HttpHeaders();
  formData = new FormData();
  constructor(private http:HttpClient , public global:GlobalesService) { }


  buscarCategoria(evaluacion:Evaluacion){
  	  return this.http.get(this.global.url()+'Evaluaciones/Evaluacion/ver/'+evaluacion);	
  }

  guardarEvaluacion(id){
    this.formData.append('usrmod',this.global.usr());
  	return this.http.post(this.global.url()+'Evaluaciones/Evaluacion/gestionar/guardar/'+id,this.formData);
  }

  guardarItems(idevaluacion:string,arr_items){
    this.formData.append('items',JSON.stringify(arr_items));
    this.formData.append('idevaluacion',1);
    this.formData.append('usrmod',this.global.usr());
    return this.http.post(this.global.url()+'/Evaluaciones/Evaluacion/guardarItems/',this.formData,{headers:this.headers});
  }


  buscarEvaluacion(id:string){
    return this.http.get(this.global.url()+'Evaluaciones/Inspecciones/ver'+id);
  }

  buscarComplementos(id:string,formato:string){
    return this.http.get(this.global.url()+'Evaluaciones/Evaluacion/complementarios/'+id+"/"+formato);
  }

  buscarItems(id,evaluacion){
    return this.http.get(this.global.url()+'Evaluaciones/Evaluacion/items/'+id+'/'+evaluacion);
  }
}
