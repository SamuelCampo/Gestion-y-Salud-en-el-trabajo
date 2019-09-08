import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';

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
  constructor(private configuracion:ConfiguracionService,
  	private route: ActivatedRoute,
  	private router:Router) { }

  ngOnInit() {
	  	this.route.paramMap.subscribe(params => {
	    this.idcategoria = params.get('id');
		});
	    this.configuracion.consultarCategoria(this.idcategoria)
	  	.subscribe((categoria) => {
  		this.categoria = categoria;
	  	});
	}

	registrarCategoria(f: NgForm){
    //console.log(f.value);
  	this.configuracion.registrarCategoria(f.value,this.idcategoria)	
    .subscribe((categoria) => {
      if (categoria) {
      	location.reload();
      }
    })
  }

}
