import { Component, OnInit } from '@angular/core';
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
  }

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
  }




}
