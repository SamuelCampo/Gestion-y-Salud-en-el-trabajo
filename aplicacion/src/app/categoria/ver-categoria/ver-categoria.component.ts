import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';
import { CategoriaPadreService } from '../../service/categoria-padre/categoria-padre.service';
import { ComplementarioService } from '../../service/complementario.service';

@Component({
  selector: 'app-ver-categoria',
  templateUrl: './ver-categoria.component.html',
  styleUrls: ['./ver-categoria.component.css']
})
export class VerCategoriaComponent implements OnInit {
  
  categoria;
  idcategoria = "";
  n_identificador_t4 = "";
  descripcion_t4 = "";
  arr_categoria: any;
  id_categoria;
  arr_cmpl;
  arr_cmple_id: any = [];
  constructor(private configuracion:ConfiguracionService,
  	private route: ActivatedRoute,
  	private router:Router,
    private categorias: CategoriaPadreService,
    private cmpl: ComplementarioService) { }

  ngOnInit() {
	  	this.route.paramMap.subscribe(params => {
	    this.idcategoria = params.get('id');
      console.log(this.idcategoria);
		});
      this.categorias.buscar()
      .subscribe((data) => {
        this.arr_categoria = data;
        console.log(this.arr_categoria);
      })
      this.cmpl.buscar("","")
      .subscribe((data) => {
        this.arr_cmpl = data;
      });
	    this.configuracion.ConsultaSubcategoria(this.idcategoria)
	  	.subscribe((data) => {
        console.log(data);
  		this.categoria = data;
	  	});
	}

	RegistrarSubcategoria(f: NgForm){
    //console.log(f.value);
    let index = this.id_categoria;
    f.value['idcategoria'] = index;
    f.value['cmpl'] = this.arr_cmple_id;
  	this.configuracion.RegistrarSubcategoria(f.value,this.idcategoria)	
    .subscribe((categoria) => {
      if (categoria) {
      	//location.reload();
      }
    })
  }

  guardarIdCategoria(id){
    this.id_categoria = id;
    return this.id_categoria;
  }

  guardarValor(id){
    if (!this.arr_cmple_id.includes(id)) {
       if (id != false && id != true) {
         this.arr_cmple_id.push(id); 
       }
       if (id == 1) {
         this.arr_cmple_id.push(id); 
       }
    }else{
      let index = this.arr_cmple_id.indexOf(id);
      this.arr_cmple_id.splice(index,1);
    }
    //console.log(this.arr_cmple_id);
  }

}
