import { Component, OnInit } from '@angular/core';
import { EvaluacionService } from '../../../service/evaluacion/evaluacion.service';
import { ActivatedRoute,Router } from '@angular/router';

@Component({
  selector: 'app-sub-categoria-evaluacion',
  templateUrl: './sub-categoria-evaluacion.component.html',
  styleUrls: ['./sub-categoria-evaluacion.component.css']
})
export class SubCategoriaEvaluacionComponent implements OnInit {
  
  categoria : string = "";
  formato: string = "";
  constructor(
  		private route:ActivatedRoute,
  		private navigate: Router,
  		private serv_eval: EvaluacionService
  	) { }

  ngOnInit() {
  	this.route.paramMap.subscribe(params => {
  		this.categoria = params.get('id');
  		this.formato = params.get('formato');
  	});
  	this.listar(this.categoria,this.formato);
  }

  listar(id,formato){
  	this.serv_eval.buscarComplementos(id,formato)
  	.subscribe((data) => {
  		console.log(data);
  	})
  }

}
