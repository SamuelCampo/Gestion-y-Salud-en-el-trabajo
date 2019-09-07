import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-ver-formato',
  templateUrl: './ver-formato.component.html',
  styleUrls: ['./ver-formato.component.css']
})
export class VerFormatoComponent implements OnInit {

	formato;
	idformat = "";

  constructor(private configuracion:ConfiguracionService,
  	private route: ActivatedRoute,
  	private router:Router) { }

  ngOnInit() {
  	this.route.paramMap.subscribe(params => {
    this.idformat = params.get('id');
    console.log(this.idformat);
    this.listarId();
  });
  }

  listarId(){
  		console.log(this.idformat);
  		this.configuracion.consultarformato(this.idformat)
	  	.subscribe((formato) => {
	  		this.formato = formato;
	  		console.log(this.formato);
	  	})
  	}

  guardarFormato(f: NgForm){
    //console.log(f.value);
  	this.configuracion.guardarformato(f.value)
    .subscribe((formato) => {
      if (formato) {
      	this.router.navigateByUrl('/listaformato'); 
      }
    })
  }

}