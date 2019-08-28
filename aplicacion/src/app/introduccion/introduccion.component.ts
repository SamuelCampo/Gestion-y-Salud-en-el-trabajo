import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-introduccion',
  templateUrl: './introduccion.component.html',
  styleUrls: ['./introduccion.component.css']
})
export class IntroduccionComponent implements OnInit {
  
  nombre1;
  nombre2;
  constructor() { }

  ngOnInit() {
  }

  IniciarSesion(){
  	console.log(this.nombre1+' '+this.nombre2);
  }

}
