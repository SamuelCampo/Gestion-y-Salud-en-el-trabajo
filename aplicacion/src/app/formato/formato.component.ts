import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
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
config: any = {};

  constructor(
  private configuracion:ConfiguracionService,
  private router:Router
  ) { }

  ngOnInit() {
  }

  guardarFormato(f: NgForm){
    //console.log(f.value);
  	this.configuracion.guardarformato(f.value)
    .subscribe((formato) => {
      if (formato) {
      	this.router.navigateByUrl('/listaformato'); 
      }
    })
  }

}
