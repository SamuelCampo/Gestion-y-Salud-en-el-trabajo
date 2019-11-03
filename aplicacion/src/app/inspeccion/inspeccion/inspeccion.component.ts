import { Component, OnInit, Pipe } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { Router,ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-inspeccion',
  templateUrl: './inspeccion.component.html',
  styleUrls: ['./inspeccion.component.css']
})

export class InspeccionComponent implements OnInit {

  startDate = new Date();
  minDate = new Date(2019, 11, 2);
  msj;
  tareas:any = [];
  porcentaje;
  valor : number = 5.0;
  style;
  varlorItems:number = 0.0;
  e: number = 0;
  quanty;
  form_verdadero = false;
  add_item;
  
  constructor() {}

  ngOnInit() {
  	//this.validarCheck();	
  }



  agregarItems(f:NgForm){
  	console.log(f.value);
  	let arreglo = {
  		'plan_accion':f.value['plan_accion'],
  		'cargo': f.value['cargo'],
  		'fecha': f.value['fecha'],
  		'recursos': f.value['recursos'],
  		'fundamentos': f.value['fundamentos']
  	};
  	this.tareas.push(arreglo);
  	this.porcentaje = this.tareas.length / this.valor * 100;
  	this.e = this.e + 1;
  	this.varlorItems = this.valor / this.e;
  	this.quanty = this.tareas.length;
  	this.style = Math.round(100 / this.quanty) + '%';
  	console.log(100 / this.tareas.length);
  	this.add_item = false;
  	f.reset();
  }

  validarCheck(){
  	this.quanty = this.quanty - 1;
  	this.style = Math.round(100 / this.quanty) + '%';
  }

}
