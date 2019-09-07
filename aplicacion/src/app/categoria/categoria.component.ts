import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-categoria',
  templateUrl: './categoria.component.html',
  styleUrls: ['./categoria.component.css']
})
export class CategoriaComponent implements OnInit {

  constructor(
  	private configuracion:ConfiguracionService,
  	private router:Router
  	) { }

  ngOnInit() {
  }

  registrarCategoria(f: NgForm){
    //console.log(f.value);
  	this.configuracion.registrarCategoria(f.value)
    .subscribe((categoria) => {
      if (categoria) {
      	location.reload(); 
      }
    })
  }

}
