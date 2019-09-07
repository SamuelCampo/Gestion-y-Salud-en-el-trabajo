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
  idformat = "";
  constructor(
  	private configuracion:ConfiguracionService,
  	private router:Router
  	) {
  	}

  ngOnInit() {
  	this.listarCategoria();
  }


  listarCategoria(){
  	this.configuracion.consultarCategoria(this.idformat)
  	.subscribe((categoria) => {
  		this.categoria = categoria;
  	})
  }

}
