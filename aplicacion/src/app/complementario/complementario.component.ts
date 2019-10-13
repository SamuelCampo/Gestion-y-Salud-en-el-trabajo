import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { Router,ActivatedRoute } from '@angular/router';
import { ItemsService } from '../service/items/items.service';
import { ComplementarioService } from '../service/complementario.service';

@Component({
  selector: 'app-complementario',
  templateUrl: './complementario.component.html',
  styleUrls: ['./complementario.component.css']
})
export class ComplementarioComponent implements OnInit {
 
  id;
  items;
  data;
  arr_items : any[] = [];
  arr_compl;
  constructor(
  		private item:ItemsService,
  		private route: ActivatedRoute,
  		private router:Router,
  		private compl: ComplementarioService
  	) { }

  ngOnInit() {
  	this.route.paramMap.subscribe(params => {
      this.id = params.get('id');
      //console.log(this.id);
      this.buscar(this.id);
    });
  	this.listarItems();
  }

  buscar(id){
  	if (id) {
  		this.compl.buscar(id,"")
	  	.subscribe((data) => {
	  		this.arr_compl = data;
	  		console.log(this.arr_compl);
	  	})
  	}
  	
  }

  listarItems(){
  		let id = "";
		this.item.getItems(id)
		.subscribe((data) => {
			this.items = data;
			  console.log(this.items);
		})
	}


	insert(f:NgForm){
		f.value['items'] = this.arr_items;
		this.compl.insert(this.id,f.value)
		.subscribe((data) => {
			if (data) {
				this.router.navigateByUrl('/listarComplementario');
			}
		})
	}

	guardarValor(id){
		console.log(id);
    if (!this.arr_items.includes(id)) {
       if (id != false && id != true) {
         this.arr_items.push(id); 
       }
       if (id == 1) {
       	this.arr_items.push(id); 
       }
    }else{
      let index = this.arr_items.indexOf(id);
      this.arr_items.splice(index,1);
    }
    console.log(this.arr_items);
  }

  

}
