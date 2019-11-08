import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Evaluacion,Fmto_evaluacion } from '../../interface/evaluacion'
import { GlobalesService } from '../../variables_globales/globales.service';

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

  guardarEvaluacion(arr_formato:Fmto_evaluacion){
  	console.log(arr_formato);
  }


  buscarEvaluacion(id:string){
    return this.http.get(this.global.url()+'Evaluaciones/Inspecciones/ver'+id);
  }

  buscarComplementos(id:string,formato:string){
    return this.http.get(this.global.url()+'Evaluaciones/Evaluacion/complementarios/'+id+"/"+formato);
  }

}
