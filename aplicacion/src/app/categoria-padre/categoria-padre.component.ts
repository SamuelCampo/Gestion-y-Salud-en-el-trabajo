import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { CategoriaPadreService } from '../service/categoria-padre/categoria-padre.service';
import { Router,ActivatedRoute } from '@angular/router';
import { ConfiguracionService } from '../service/configuracion.service';

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
  arr_sub;

  constructor(
  	private configuracion:CategoriaPadreService,
    private route: ActivatedRoute,
  	private router:Router,
    private confg: ConfiguracionService
  	) { }


  ngOnInit() {
      this.route.paramMap.subscribe(params => {
      this.idcategoria = params.get('id');
      console.log(this.idcategoria);
      this.get(this.idcategoria);
      this.confg.getSubcategoria("")
      .subscribe((data) =>{
        this.arr_sub = data;
        console.log(this.arr_sub);
      });
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
         f.value['subcategoria'] = this.arr_subcategorias;
      	this.configuracion.insert(f.value,id)
      	.subscribe((data) => {
      	this.categoria = data;
          this.router.navigateByUrl('listarEstructura');
      	})
      })
   }

   guardarSub(id){
    console.log(id);
    if (!this.arr_subcategorias.includes(id)) {
       if (id != false && id != true) {
         this.arr_subcategorias.push(id); 
       }
       if (id == 1) {
         this.arr_subcategorias.push(id); 
       }
    }else{
      let index = this.arr_subcategorias.indexOf(id);
      this.arr_subcategorias.splice(index,1);
    }
    console.log(this.arr_subcategorias);
  }

}
