import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { CategoriaPadreService } from '../service/categoria-padre/categoria-padre.service';
import { Router,ActivatedRoute } from '@angular/router';

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
    private route: ActivatedRoute,
  	private router:Router
  	) { }


  ngOnInit() {
      this.route.paramMap.subscribe(params => {
      this.idcategoria = params.get('id');
      console.log(this.idcategoria);
      this.listar();
    });
  }

  listar(){
    if (this.idcategoria != ""){
      this.configuracion.get(this.idcategoria)
      .subscribe((data) => {
        this.categoria = data;
        console.log(this.categoria);
      });
    }
  }

  insert(f:NgForm){
  	let id = "";
    console.log(f.value);
  	//this.configuracion.insert(f.value,id)
  	//.subscribe((data) => {
  	//	this.categoria = data;
  	//	console.log(data);
  	//})*/
  }

}
