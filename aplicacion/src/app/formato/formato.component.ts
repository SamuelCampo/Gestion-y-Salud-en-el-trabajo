import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { CategoriaPadreService } from '../service/categoria-padre/categoria-padre.service';
import { Router } from '@angular/router';
import {
  trigger,
  state,
  style,
  animate,
  transition,
  // ...
} from '@angular/animations';


@Component({
  selector: 'app-formato',
  templateUrl: './formato.component.html',
  styleUrls: ['./formato.component.css']
})
export class FormatoComponent implements OnInit {

titulo1;
descripcion1;
categoria1;
config: any = {};
categoria = {};
arr_categoria: any[] = [];

  constructor(
  private configuracion:ConfiguracionService,
  private router:Router,
  private arrcategoria:CategoriaPadreService
  ) { }

  ngOnInit() {
    this.getCategoria();
  }

  guardarFormato(f: NgForm){
    //console.log(f.value);
  	this.configuracion.guardarformato(f.value,this.arr_categoria)
    .subscribe((formato) => {
      if (formato) {
      	this.router.navigateByUrl('/listaformato'); 
      }
    })
  }

  getCategoria(){
    let id = "";
    this.arrcategoria.listar(this.categoria,id)
    .subscribe((data) => {
      this.categoria1 = data;
    })
  }

  guardarValor(id){
    console.log(id);
    if (!this.arr_categoria.includes(id)) {
       if (id != false && id != true) {
         this.arr_categoria.push(id); 
       }
       if (id == 1) {
         this.arr_categoria.push(id); 
       }
    }else{
      let index = this.arr_categoria.indexOf(id);
      this.arr_categoria.splice(index,1);
    }
  }

}
