import { Component, OnInit } from '@angular/core';
import { EvaluacionService } from '../../../service/evaluacion/evaluacion.service';
import { ActivatedRoute,Router } from '@angular/router';
import { FormsModule,NgForm } from '@angular/forms';

@Component({
  selector: 'app-items-e',
  templateUrl: './items-e.component.html',
  styleUrls: ['./items-e.component.css']
})
export class ItemsEComponent implements OnInit {

  id: string = "";
  complementario: string = "";
  arr_estructura;
  valpermit: any = ['C','NC','NP'];
  validar;
  constructor(
  		private route:ActivatedRoute,
  		private navigate: Router,
  		private serv_eval: EvaluacionService
  	) { }

  ngOnInit() {
  	this.route.paramMap.subscribe(params => {
  		this.id = params.get('id');
  		this.complementario = params.get('evaluacion');
  	});
  	this.listarItems(this.id,this.complementario);
  }


  listarItems(id,evaluacion){
  	this.serv_eval.buscarItems(id,evaluacion)
  	.subscribe((data) => {
  		console.log(data);
  		if (Array.isArray(data)) {
  			this.arr_estructura = data;
  		}
  	});
  }

  guardarItems(f:NgForm,evaluacion){
     this.serv_eval.guardarItems(f.value)
     .subscribe((data)=>{
     });
  
}
}
