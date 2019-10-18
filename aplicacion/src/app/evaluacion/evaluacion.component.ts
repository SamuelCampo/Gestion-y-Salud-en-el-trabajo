import { Component, OnInit } from '@angular/core';
import { ConfiguracionService } from '../service/configuracion.service';
import { FormsModule,NgForm } from '@angular/forms';
import { EvaluacionService } from '../service/evaluacion/evaluacion.service'

@Component({
  selector: 'app-evaluacion',
  templateUrl: './evaluacion.component.html',
  styleUrls: ['./evaluacion.component.css']
})
export class EvaluacionComponent implements OnInit {
  
  formato: any = [];
  id_formato :string = "";
  parametros: any = [];
  subcategoria;
  complementario;
  items;
  valpermit: any = ['C','NC','NP'];
  
  constructor(
      private conf:ConfiguracionService,
      private evlu:EvaluacionService
    ) { }

  ngOnInit() {
    this.conf.consultarformato("","")
    .subscribe((data) => {
      this.formato = data;
    })
  }


  iniciar(f:NgForm){
     this.evlu.buscarCategoria(f.value.id_formato)
     .subscribe((data)=>{
         this.parametros = data['formato'];
         this.subcategoria = data['subcategoria'];
         this.complementario = data['complemento'];
         this.items = data['items'];
         console.log(this.items);
     });
  }

  guardarItems(f:NgForm){
      console.log(f.value);
  }

  validar(id){
      if (id != "C") {
        alert(id);
      }
  }

}
