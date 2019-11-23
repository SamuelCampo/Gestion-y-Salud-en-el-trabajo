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
  selector: 'app-roles',
  templateUrl: './roles.component.html',
  styleUrls: ['./roles.component.css']
})
export class RolesComponent implements OnInit {

	Rol;
	id;
	ver_rol;
	config: any = {};
  IniciarSesion;
  roless;

	constructor(
    private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,
    private serv_usuario: UsuarioService
    ) { }


 ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.id = params.get('id');
    });
    this.consultarRoles();
  }

  consultarRoles(){
    
  }

  guardarRoles(f:NgForm){
    this.serv_usuario.guardarRol(f.value)
    .subscribe((data) => {
       if (data) {
         this.router.navigateByUrl('/lista_roles');
       }
    })
  }

}
