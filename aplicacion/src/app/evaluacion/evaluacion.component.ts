import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-evaluacion',
  templateUrl: './evaluacion.component.html',
  styleUrls: ['./evaluacion.component.css']
})
export class EvaluacionComponent implements OnInit {
  
  categoria1;
  sub;
  valoracion1;
  justificaicion1;
  observacion1;
  valor1;
  IniciarSesion;
  formato1;
  
  constructor() { }

  ngOnInit() {
  }

}
