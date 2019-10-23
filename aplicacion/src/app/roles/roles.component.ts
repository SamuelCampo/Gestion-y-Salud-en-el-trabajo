import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';
import { RolesService } from '../service/roles/roles.service';

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

	constructor(
    private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,
    private roles:RolesService
    ) { }


 ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.id = params.get('id');
      //console.log(this.id);
      this.roles.getConfig(this.id)
      .subscribe((data) =>{
        this.ver_rol = data[0];
        console.log(data);
      })
    });
    this.consultarRoles();
  }

  consultarRoles(){
    this.roles.getConfig()
      .subscribe(data => {
      this.config = data;
      if (data !== false) {
       
      }else{
        
      }
    },error => {

    })
  }

}
