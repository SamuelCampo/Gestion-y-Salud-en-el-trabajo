import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';



@Component({
  selector: 'app-introduccion',
  templateUrl: './introduccion.component.html',
  styleUrls: ['./introduccion.component.css']
})
export class IntroduccionComponent implements OnInit {
  
  nombre1;
  nombre2;
  config: any = {};
  constructor(private configuracion:ConfiguracionService) { }

  ngOnInit() {
    this.consultarUsuarios();
  }

  IniciarSesion(){
  	console.log(this.nombre1+' '+this.nombre2);
  }

  consultarUsuarios(){
    this.configuracion.getConfig()
      .subscribe(data => {
      this.config = data;
      console.log(this.config);
    },error => {

    })
  }

}
