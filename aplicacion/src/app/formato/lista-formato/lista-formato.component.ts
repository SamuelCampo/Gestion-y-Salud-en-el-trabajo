import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../../service/configuracion.service';
import { ConfirmacionService } from '../../dialogo/confirmacion.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-lista-formato',
  templateUrl: './lista-formato.component.html',
  styleUrls: ['./lista-formato.component.css']
})
export class ListaFormatoComponent implements OnInit {

	formato;
	idformat = "";

  constructor(
    private configuracion:ConfiguracionService,
    private dialogo:ConfirmacionService
    ) {

  }

  ngOnInit() {
  	this.listar();
  }


  listar(){
	  	this.configuracion.consultarformato(this.idformat)
	  	.subscribe((formato) => {
	  		this.formato = formato;
	  		console.log(this.formato);
	  	})
  	}

  	listarId(){
  		console.log(this.idformat);
  		this.configuracion.consultarformato(this.idformat)
	  	.subscribe((formato) => {
	  		this.formato = formato;
	  		console.log(this.formato);
	  	})
  	}

    eliminarFormato(id,descripcion,formato){
      let v = confirm('Estas seguro de eliminar la categoria'+' '+descripcion);
      if (v) {
        this.configuracion.eliminarFormato(id)
        .subscribe((data) => {
          if (data) {
            let index = this.formato.indexOf(formato);
            this.formato.splice(index, 1);
          }
        })
      }
    }

  }
