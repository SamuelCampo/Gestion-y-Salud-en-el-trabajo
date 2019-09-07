import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../../service/configuracion.service';
import { Router } from '@angular/router';import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-lista-categoria',
  templateUrl: './lista-categoria.component.html',
  styleUrls: ['./lista-categoria.component.css']
})
export class ListaCategoriaComponent implements OnInit {
  
  categoria;
  constructor(
  	private configuracion:ConfiguracionService,
  	private router:Router
  	) {
  	}

  ngOnInit() {
  	let id;
  	this.listarCategoria(id);
  }


  listarCategoria(f:NgForm){
  	let id = "";
  	this.configuracion.consultarCategoria(id)
  	.subscribe((categoria) => {
  		console.log(categoria);
  		this.categoria = categoria;
  	})
  }

}
