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
  roll;
  id;
  ver_usuario: any = {};
  list_rol;
  constructor(
    private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,
    private usuarios:UsuarioService
    ) { }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.id = params.get('id');
      //console.log(this.id);
      this.usuarios.getConfig(this.id)
      .subscribe((data) =>{
        this.ver_usuario = data[0];
        console.log(data);
      })
    });
    this.listar();
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

  listar(){
    this.usuarios.listarRoles("")
    .subscribe((data) => {
      this.list_rol = data;
    });
  }

}
