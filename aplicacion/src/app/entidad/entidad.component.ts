import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';
import { EntidadesService } from '../service/entidad/entidades.service';
import {
  trigger,
  state,
  style,
  animate,
  transition,
  // ...
} from '@angular/animations';

@Component({
  selector: 'app-entidad',
  templateUrl: './entidad.component.html',
  styleUrls: ['./entidad.component.css']
})
export class EntidadComponent implements OnInit {

nombre1;
entidad1;
responsabel1;
telefono2;
Correo1;
direccion1;
id;
listar;
entidades;
config: any = {};
ver_entidad: any = {};

  constructor(
  	private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,
    private entidad:EntidadesService
  	) { }

  ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.id = params.get('id');
      //console.log(this.id);
      this.entidad.getConfig(this.id)
      .subscribe((data) =>{
        this.ver_entidad = data[0];
        console.log(data);
      })
    });
    this.listar();
    this.consultarEntidad();
  }

   IniciarSesion(f: NgForm,){
  	this.entidad.guardarEntidad(f.value)
    .subscribe((newUsuario) => {
      //console.log(newUsuario);

    })
    this.router.navigateByUrl('lista-entidades'); 
  }

   consultarEntidad(){
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
