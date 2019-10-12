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
  subcategorias: any;
  idcategoria = "";
  arr_subcategorias: any[] = [];
  nombre;
  identificador;

  constructor(
  	private configuracion:CategoriaPadreService,
    private route: ActivatedRoute,
  	private router:Router
  	) { }


  ngOnInit() {
      this.route.paramMap.subscribe(params => {
      this.idcategoria = params.get('id');
      console.log(this.idcategoria);
      this.get(this.idcategoria);
    });
  }

  get(id){
      if (id) {
        this.configuracion.listar("",id)
        .subscribe((data) => {
          this.categoria = data[0];
          console.log(id);
          console.log(this.categoria);
        });
      }
    }

  insert(f:NgForm){
        this.route.paramMap.subscribe(params => {
         this.idcategoria = params.get('id');
         let id = "";
         if (this.categoria != null) {
            id = this.idcategoria;
         }else{
            id = "";
         }
      	this.configuracion.insert(f.value,id)
      	.subscribe((data) => {
      	this.categoria = data;
          this.router.navigateByUrl('listarEstructura');
      	})
      })
   }

}
