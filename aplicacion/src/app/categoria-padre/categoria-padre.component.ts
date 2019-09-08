import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { CategoriaPadreService } from '../service/categoria-padre/categoria-padre.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-categoria-padre',
  templateUrl: './categoria-padre.component.html',
  styleUrls: ['./categoria-padre.component.css']
})
export class CategoriaPadreComponent implements OnInit {

  categoria;
  idcategoria = "";

  constructor(
  	private configuracion:CategoriaPadreService,
  	private router:Router
  	) { }


  ngOnInit() {
  }

  insert(f:NgForm){
  	let id = "";
  	this.configuracion.insert(f.value,id)
  	.subscribe((data) => {
  		this.categoria = data;
  		console.log(data);
  	})
  }

}
