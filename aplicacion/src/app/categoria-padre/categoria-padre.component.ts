import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-categoria-padre',
  templateUrl: './categoria-padre.component.html',
  styleUrls: ['./categoria-padre.component.css']
})
export class CategoriaPadreComponent implements OnInit {

  constructor(
  	private configuracion:ConfiguracionService,
  	private router:Router
  	) { }


  ngOnInit() {
  }

}
