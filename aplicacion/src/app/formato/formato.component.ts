import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-formato',
  templateUrl: './formato.component.html',
  styleUrls: ['./formato.component.css']
})
export class FormatoComponent implements OnInit {

  constructor(private configuracion:ConfiguracionService) { }

  ngOnInit() {
  }

  guardarFormato(f: NgForm){
    //console.log(f.value);
  	this.configuracion.guardarformato(f.value)
    .subscribe((newUsuario) => {
      //console.log(newUsuario);
    })
  }

}
