import { Component, OnInit } from '@angular/core';
import { EvaluacionService } from '../../../service/evaluacion/evaluacion.service';
import { ActivatedRoute,Router } from '@angular/router';
import { trigger,style,transition,animate,state } from '@angular/animations';
import { GlobalesService } from '../../../variables_globales/globales.service';

@Component({
  selector: 'app-categorias',
  templateUrl: './categorias.component.html',
  styleUrls: ['./categorias.component.css'],
  animations: []
})
export class CategoriasEvaluacionComponent implements OnInit {

  formato;
  arr_formato:any = {};
  constructor(
  	private serv_eval:EvaluacionService,
  	private route:ActivatedRoute,
    private navigator:Router,
    private global:GlobalesService
  	) { }

  ngOnInit() {
  	let id = this.route.paramMap.subscribe(params =>{
  		this.formato = params.get('id');
  	});
  	this.serv_eval.buscarCategoria(this.formato)
  	.subscribe((data) => {

  		this.arr_formato = data;
  	})

    this.serv_eval.guardarEvaluacion(this.formato)
    .subscribe((data) => {
      this.global.insertFormato(data);
    })

  }

  siguiente(id,idformato){
    this.navigator.navigateByUrl('step2/'+id+"/"+idformato);
  }

}
