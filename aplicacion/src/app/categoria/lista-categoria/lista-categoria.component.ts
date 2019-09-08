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
  	this.configuracion.ConsultaSubcategoria(this.idformat)
  	.subscribe((data) => {
  		this.categoria = data;
      console.log(this.categoria);
  	})
  }

  deleteCategoria(id,descripcion,category){
    let v = confirm('Estas seguro de eliminar la categoria'+' '+descripcion);
    if (v) {
      this.configuracion.eliminarCategoria(id)
      .subscribe((data) => {
        if (data) {
          let index = this.categoria.indexOf(category);
          this.categoria.splice(index, 1);
        }
      })
    }
  }

}
