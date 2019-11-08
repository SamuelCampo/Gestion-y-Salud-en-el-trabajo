import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';
import { InspeccionService } from '../../service/inspeccion/inspeccion.service';
import {
  trigger,
  state,
  style,
  animate,
  transition,
  // ...
} from '@angular/animations';

@Component({
  selector: 'app-lista-inspeccion',
  templateUrl: './lista-inspeccion.component.html',
  styleUrls: ['./lista-inspeccion.component.css']
})
export class ListaInspeccionComponent implements OnInit {

	config: any = {};
	ver_inspecciones: any = {};
	inspecciones;
	id;
	listar;
  desc;

  constructor(

  	private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,
    private inspeccion:InspeccionService
    ) { }

   ngOnInit() {
    this.route.paramMap.subscribe(params => {
      this.id = params.get('id');
      //console.log(this.id);
      this.inspeccion.getConfig(this.id)
      .subscribe((data) =>{
        this.ver_inspecciones = data;
        console.log(data);
      })
    });
        this.consultarInspeccion();
  }

   consultarInspeccion(){
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
