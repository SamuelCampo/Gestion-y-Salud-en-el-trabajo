import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';
import { CategoriaPadreService } from '../../service/categoria-padre/categoria-padre.service';

@Component({
  selector: 'app-ver-formato',
  templateUrl: './ver-formato.component.html',
  styleUrls: ['./ver-formato.component.css']
})
export class VerFormatoComponent implements OnInit {

	formato;
	idformat = "";
	titulo_t2;
	descripcion_t2;
  categoria = {};

  constructor(private configuracion:ConfiguracionService,
  	private route: ActivatedRoute,
  	private router:Router,
    private arrcategoria:CategoriaPadreService
    ) { }

  ngOnInit() {
  	this.route.paramMap.subscribe(params => {
    this.idformat = params.get('id');
    this.listarId(this.formato);
  });
    this.getCategoria();
  }

  listarId(f:NgForm){
    if (f) {
        this.configuracion.consultarformato(f.value,this.idformat)
        .subscribe((formato) => {
          this.formato = formato;
        })
      }else{
        this.configuracion.consultarformato("",this.idformat)
        .subscribe((formato) => {
          this.formato = formato;
        })
      }
  	}

  guardarFormato(f: NgForm){
    console.log(f.value);
  	this.configuracion.guardarformato(f.value)
    .subscribe((formato) => {
      if (formato) {
      	this.router.navigateByUrl('/listaformato'); 
      }
    })
  }

  getCategoria(){
    let id = "";
    this.arrcategoria.get(id)
    .subscribe((data) => {
      this.categoria1 = data;
    })
  }

}
