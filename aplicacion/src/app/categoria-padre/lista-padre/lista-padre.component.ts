import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { Router } from '@angular/router';
import { CategoriaPadreService } from '../../service/categoria-padre/categoria-padre.service';

@Component({
  selector: 'app-lista-padre',
  templateUrl: './lista-padre.component.html',
  styleUrls: ['./lista-padre.component.css']
})
export class ListaPadreComponent implements OnInit {

  categoria;
  id;
  constructor(private router:Router,private configuracion:CategoriaPadreService,) {

  }

  ngOnInit() {
  	this.listarCategoriaPadre();
  }

  listarCategoriaPadre(){
  	this.configuracion.get(this.id)
  	.subscribe((data) => {
  		this.categoria = data;
      console.log(this.categoria);
  	})
  }


}
