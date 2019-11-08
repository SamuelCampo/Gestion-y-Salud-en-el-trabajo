import { Component, OnInit } from '@angular/core';
import { EvaluacionService } from '../../../service/evaluacion/evaluacion.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-categorias',
  templateUrl: './categorias.component.html',
  styleUrls: ['./categorias.component.css']
})
export class CategoriasEvaluacionComponent implements OnInit {

  formato : string = "";
  arr_formato:any = {};
  constructor(
  	private serv_eval:EvaluacionService,
  	private route:ActivatedRoute
  	) { }

  ngOnInit() {
  	let id = this.route.paramMap.subscribe(params =>{
  		this.formato = params.get('id');
  	});
  	this.serv_eval.buscarCategoria(this.formato)
  	.subscribe((data) => {
  		this.arr_formato = data;
  	})
  }

}
