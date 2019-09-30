import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { CategoriaPadreService } from '../service/categoria-padre/categoria-padre.service'
import { Router } from '@angular/router';

@Component({
  selector: 'app-categoria',
  templateUrl: './categoria.component.html',
  styleUrls: ['./categoria.component.css']
})
export class CategoriaComponent implements OnInit {

  arr_subcategoria: any;

  constructor(
  	private configuracion:ConfiguracionService,
  	private router:Router,
    private categoria:CategoriaPadreService
  	) { }

  ngOnInit() {
  }

  RegistrarSubcategoria(f: NgForm){
    //console.log(f.value);
    let id = "";
  	this.configuracion.RegistrarSubcategoria(f.value,id)
    .subscribe((categoria) => {
      if (categoria) {
        console.log(categoria);
      	this.router.navigateByUrl('listacategoria');
      }
    })
  }

  listarCategoria(id){
    this.configuracion.getSubcategoria(id)
    .subscribe((data) =>{
      this.arr_subcategoria = data;
      console.log(this.arr_subcategoria);
    });
  }

}
