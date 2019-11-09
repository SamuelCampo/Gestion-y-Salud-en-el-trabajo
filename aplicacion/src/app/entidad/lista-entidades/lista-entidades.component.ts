import { Component, OnInit } from '@angular/core';
import { EntidadesService } from '../../service/entidad/entidades.service';
import { FormsModule,NgForm } from '@angular/forms';

@Component({
  selector: 'app-lista-entidades',
  templateUrl: './lista-entidades.component.html',
  styleUrls: ['./lista-entidades.component.css']
})

export class ListaEntidadesComponent implements OnInit {

  arr_entidad : any = [];
  formato;
  desc;
  
  

  constructor(private entidad:EntidadesService) { }

  ngOnInit() {
  	let id = "";
  	this.entidad.getConfig(id)
  	.subscribe((data) => {
  		this.arr_entidad = data;
  		console.log(data);
  	})
  }


  buscarEntidades(f:NgForm){

  }

  eliminarEntidad(id,descripcion,formato){
      let v = confirm('Estas seguro de eliminar la entidad'+' '+descripcion);
      if (v) {
        this.entidad.eliminarEntidad(id)
        .subscribe((data) => {
          if (data) {
            let index = this.formato.indexOf(formato);
            this.formato.splice(index, 1);
          }
        })
      }
    }

}

