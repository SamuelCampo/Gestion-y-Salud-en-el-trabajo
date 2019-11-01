import { Component, OnInit } from '@angular/core';
import { RolesService } from '../../service/roles/roles.service';

@Component({
  selector: 'app-listar-roles',
  templateUrl: './listar-roles.component.html',
  styleUrls: ['./listar-roles.component.css']
})
export class ListarRolesComponent implements OnInit {
	arr_roles;
	roles;
  constructor() { }

 ngOnInit() {
  	let id = "";
  	this.roles.getConfig(id)
  	.subscribe((data) => {
  		this.arr_roles = data;
  		console.log(data);
  	})
  }

}
