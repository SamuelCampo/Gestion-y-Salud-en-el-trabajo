import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { Router,ActivatedRoute } from '@angular/router';
import { CategoriaPadreService } from '../../service/categoria-padre/categoria-padre.service';

@Component({
  selector: 'app-lista-padre',
  templateUrl: './lista-padre.component.html',
  styleUrls: ['./lista-padre.component.css']
})
export class ListaPadreComponent implements OnInit {

  arr_categoria = {};
  categoria;
  id;
  ListaPadreComponent;
  constructor(
    private route:ActivatedRoute,
    private router:Router,
    private configuracion:CategoriaPadreService,
    ) {

  }

  ngOnInit(){
      this.route.paramMap.subscribe(params => {
      this.id = params.get('id');
    });
      this.listarcategorias();
  }

  listarcategorias(){
    this.configuracion.buscar()
    .subscribe((data) =>{
      this.categoria = data;
    })
  }

  listarCategoriaPadre(f:NgForm){
    console.log
  	this.configuracion.listar(f.value,this.id)
  	.subscribe((data) => {
  		this.categoria = data;
      console.log(this.categoria);
  	})
  }

  deleteCategoria(id,descripcion,category){
    let v = confirm('Estas seguro de eliminar la categoria'+' '+descripcion);
    if (v) {
      this.configuracion.delete(id)
      .subscribe((data) => {
        if (data) {
          let index = this.categoria.indexOf(category);
          this.categoria.splice(index, 1);
        }
      })
    }
  }


}
