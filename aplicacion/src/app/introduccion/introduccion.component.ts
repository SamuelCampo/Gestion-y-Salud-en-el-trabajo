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
  selector: 'app-introduccion',
  templateUrl: './introduccion.component.html',
  styleUrls: ['./introduccion.component.css']
})
export class IntroduccionComponent implements OnInit {
  
  nombre1;
  nombre2;
  apellido1;
  apellido2;
  cedula;
  telefono;
  direccion;
  cargo;
  clave;
  config: any = {};
  constructor(
    private configuracion:ConfiguracionService,
    private router:Router
    ) { }

  ngOnInit() {
    this.consultarUsuarios();
  }

  IniciarSesion(f: NgForm){
    console.log(f.value);
  	this.configuracion.guardarUsuario(f.value)
    .subscribe((newUsuario) => {
      console.log(newUsuario);
    })
  }

  consultarUsuarios(){
    this.configuracion.getConfig()
      .subscribe(data => {
      this.config = data;
      if (data !== false) {
       //this.router.navigateByUrl('/setup2'); 
      }else{
        
      }
    },error => {

    })
  }

}
