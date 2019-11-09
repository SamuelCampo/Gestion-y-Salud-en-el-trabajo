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
  arr_items:any = [];
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
  	this.navigate.events.subscribe((events) => {
     			console.log(events);
     		})
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

  guardarItems(f:NgForm){
     this.serv_eval.guardarItems(f.value,this.arr_items)
     .subscribe((data)=>{
     	if (data) {
     		alert('Excelente el compleemtario ha sido diligenciado');
     		this.navigate.navigateByUrl('/step2/27/1');
     	}
     });
  
}

	validar(id,val,complementario,val_cmpl){
		let arreglo = {'items':id,'valor':val,'cmpl':complementario,'val_cmpl':val_cmpl};
	    if (!this.arr_items.includes(id)) {
	       if (id != false && id != true) {
	       	
	         this.arr_items.push(arreglo); 
	       }
	       if (id == 1) {
	       	this.arr_items.push(arreglo); 
	       }
	    }else{
	      let index = this.arr_items.indexOf(id);
	      this.arr_items.splice(index,1);
	    }
	    console.log(this.arr_items);
	}

}
