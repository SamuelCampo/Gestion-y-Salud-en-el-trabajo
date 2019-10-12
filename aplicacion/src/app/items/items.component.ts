import { Component, OnInit, Renderer2 } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { Router,ActivatedRoute } from '@angular/router';
import { ItemsService } from '../service/items/items.service';
import { CategoriaPadreService } from '../service/categoria-padre/categoria-padre.service';

@Component({
  selector: 'app-items',
  templateUrl: './items.component.html',
  styleUrls: ['./items.component.css']
})
export class ItemsComponent implements OnInit {

  id = "";
  arr_items;
  desabilitar = "cargar";
  identifiactivo1;
  marco_legal1;
  criterio1;
  verificacion1;

  constructor(
  	private ser_categoria:CategoriaPadreService,
  	private ser_items:ItemsService,
  	private router:Router,
  	private act_route:ActivatedRoute
  	) { }

  ngOnInit() {

  		this.act_route.paramMap.subscribe(params => {
    	this.id = params.get('id');
  })
  		if (this.id != "") {
  			this.listarItems();
  		}
  }

  contenedor = this.desabilitar;

  guardarItems(f:NgForm){
	  	if (f) {
	  		this.ser_items.insert(f.value,this.id)
	  		.subscribe((data) =>{

	  			this.arr_items = data;
	  			console.log(this.arr_items);
	  		})
	  	}else{
	  		this.ser_items.insert("",this.id)
	  	}
	  	this.router.navigateByUrl('listarItems');

  }

  listarItems(){
		this.ser_items.getItems(this.id)
		.subscribe((data) => {
			this.arr_items = data[0];
			  console.log(this.arr_items);
		})
	}




}
