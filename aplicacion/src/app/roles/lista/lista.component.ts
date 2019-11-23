import { Component, OnInit } from '@angular/core';
import { UsuarioService } from '../../service/usuario.service';
import { FormsModule,NgForm } from '@angular/forms';

@Component({
  selector: 'app-lista',
  templateUrl: './lista.component.html',
  styleUrls: ['./lista.component.css']
})
export class ListaComponent implements OnInit {

  constructor(private serv_usuario:UsuarioService) {}

  id;
  load : boolean = true;
  listarItems;
  list_rol;

  ngOnInit() {
  	this.listar(this.listarItems);
  }


  listar(f:NgForm){
  	this.serv_usuario.listarRoles("")
  	.subscribe((data) => {
  		this.list_rol = data;
      this.load = false;
  	});
  }

  eliminarRol(id,descripcion,rol){
      let v = confirm('Estas seguro de eliminar el usuario'+' '+descripcion);
      if (v) {
        this.serv_usuario.eliminarRol(id)
        .subscribe((data) => {
          if (data) {
            let index = this.list_rol.indexOf(rol);
            this.list_rol.splice(index, 1);
          }
        })
      }
    }

  	
}
