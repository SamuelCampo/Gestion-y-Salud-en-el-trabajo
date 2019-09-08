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

  RegistrarSubcategoria(f: NgForm){
    //console.log(f.value);
    let id = "";
  	this.configuracion.RegistrarSubcategoria(f.value,id)
    .subscribe((categoria) => {
    console.log(categoria);
      if (categoria) {
        console.log(categoria);
      	//this.router.navigateByUrl('listacategoria');
      }
    })
  }

}
