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
  load: boolean = true;
  constructor(private ser_items:ItemsService,
  			  private router:Router) { }

  ngOnInit() {
  	this.listarItems();
  }

  listarItems(){
  	this.ser_items.getItems(this.id)
  	.subscribe((data) => {
  		this.items = data;
      this.load = false;
      console.log(this.items);
  	})
  }

  eliminarItems(id,descripcion,items){
      let v = confirm('Estas seguro de eliminar la categoria'+' '+descripcion);
      if (v) {
        this.ser_items.deleteItems(id)
        .subscribe((data) => {
          if (data) {
            let index = this.items.indexOf(items);
            this.items.splice(index, 1);
          }
        })
      }
    }



}
