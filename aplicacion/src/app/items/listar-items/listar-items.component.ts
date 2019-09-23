import { Component, OnInit } from '@angular/core';
import { ItemsService } from '../../service/items/items.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-listar-items',
  templateUrl: './listar-items.component.html',
  styleUrls: ['./listar-items.component.css']
})
export class ListarItemsComponent implements OnInit {
  
  items;
  id = "";
  constructor(private ser_items:ItemsService,
  			  private router:Router) { }

  ngOnInit() {
  	this.listarItems();
  }

  listarItems(){ 
  	this.ser_items.getItems(this.id)
  	.subscribe((data) => {
  		this.items = data;
      console.log(this.items);
  	})
  }

}
