import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { Router,ActivatedRoute } from '@angular/router';
import { ConfiguracionService } from '../service/configuracion.service';
import {
  trigger,
  state,
  style,
  animate,
  transition,
  // ...
} from '@angular/animations';

@Component({
  selector: 'app-paso1',
  templateUrl: './paso1.component.html',
  styleUrls: ['./paso1.component.css']
})
export class Paso1Component implements OnInit {
form_verdadero;
  constructor(

  	private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,

  	) { }

  ngOnInit() {
  }

}
