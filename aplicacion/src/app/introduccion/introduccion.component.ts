import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';
import { UsuarioService } from '../service/usuario.service';
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
  cedula = "";
  telefono;
  direccion;
  cargo;
  clave;
  config: any = {};
  usuario;
  cargo2;
  ver_usuario: any = {};
  constructor(
    private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,
    private usuarios:UsuarioService
    ) { }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.cedula = params.get('id');
      //console.log(this.id);
      this.usuarios.getConfig(this.cedula)
      .subscribe((data) =>{
        this.ver_usuario = data[0];
        console.log(data);
      })
    });
    this.consultarUsuarios();
  }

  IniciarSesion(f: NgForm,){
  	this.usuarios.guardarUsuario(f.value)
    .subscribe((newUsuario) => {
      //console.log(newUsuario);

    })
    this.router.navigateByUrl('lista-usuario'); 
  }

  consultarUsuarios(){
    this.configuracion.getConfig()
      .subscribe(data => {
      this.config = data;
      if (data !== false) {
       
      }else{
        
      }
    },error => {

    })
  }

}
