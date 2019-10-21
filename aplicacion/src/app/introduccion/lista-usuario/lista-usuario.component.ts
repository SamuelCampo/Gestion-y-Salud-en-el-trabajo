import { Component, OnInit } from '@angular/core';
import { UsuarioService } from '../../service/usuario.service';

@Component({
  selector: 'app-lista-usuario',
  templateUrl: './lista-usuario.component.html',
  styleUrls: ['./lista-usuario.component.css']
})
export class ListaUsuarioComponent implements OnInit {

  arr_usuario : any = [];
  formato;

  constructor(private usuario: UsuarioService) { }

  ngOnInit() {
  	let id = "";
  	this.usuario.getConfig(id)
  	.subscribe((data) => {
  		this.arr_usuario = data;
  		console.log(data);
  	})
  }  

  eliminarUsuario(id,descripcion,formato){
      let v = confirm('Estas seguro de eliminar el usuario'+' '+descripcion);
      if (v) {
        this.usuario.eliminarUsuario(id)
        .subscribe((data) => {
          if (data) {
            let index = this.formato.indexOf(formato);
            this.formato.splice(index, 1);
          }
        })
      }
    }

}
