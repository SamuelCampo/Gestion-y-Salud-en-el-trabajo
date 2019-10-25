import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Evaluacion,Fmto_evaluacion } from '../../interface/evaluacion'
import { GlobalesService } from '../../variables_globales/globales.service';

@Injectable({
  providedIn: 'root'
})
export class EvaluacionService {
  
  base_url = "http://tienda.hms.com.co/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();
  constructor(private http:HttpClient , public global:GlobalesService) { }


  buscarCategoria(evaluacion:Evaluacion,idposition){
  	//console.log(this.base_url+'Evaluaciones/Evaluacion/ver/'+evaluacion);
  	let offset = idposition;
  	if (idposition = 0) {
  	  return this.http.get(this.global.url()+'Evaluaciones/Evaluacion/ver/'+evaluacion);	
  	}else{
  		console.log(this.base_url+'Evaluaciones/Evaluacion/ver/'+evaluacion+'/'+offset);
  		return this.http.get(this.global.url()+'Evaluaciones/Evaluacion/ver/'+evaluacion+'/'+offset);	
  	}
  }

  guardarEvaluacion(arr_formato:Fmto_evaluacion){
  	console.log(arr_formato);
  }

}
