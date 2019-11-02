import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-inspeccion',
  templateUrl: './inspeccion.component.html',
  styleUrls: ['./inspeccion.component.css']
})

export class InspeccionComponent implements OnInit {

  msj;
  tareas:any = [];
  porcentaje;
  valor = 5;
  style;
  
  constructor() {}

  ngOnInit() {
  	this.validarCheck();	
  }



  agregarItems(){
  	let arreglo = {'tarea 1':'Esta es la aplicacion a la que vamos a tener que buscar'};
  	this.tareas.push(arreglo);
  	this.porcentaje = this.tareas.length / this.valor * 100;
  	this.style = Math.round(this.porcentaje) + '%';
  }

  validarCheck(){
  	//setInterval(function(){ alert("Hello"); }, 3000);
  }

}
