import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Evaluacion } from '../../interface/evaluacion'

@Injectable({
  providedIn: 'root'
})
export class EvaluacionService {
  
  base_url = "http://localhost/gestion/api/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();
  constructor(private http:HttpClient) { }


  buscarCategoria(evaluacion:Evaluacion){
  	console.log(this.base_url+'Evaluaciones/Evaluacion/ver/'+evaluacion);
  	return this.http.get(this.base_url+'Evaluaciones/Evaluacion/ver/'+evaluacion);
  }

}
