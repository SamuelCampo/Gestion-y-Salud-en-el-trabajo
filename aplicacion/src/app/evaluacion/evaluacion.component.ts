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
  arr_formato: any = [];
  posicion: number = 1;
  
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
     this.evlu.buscarCategoria(f.value.id_formato,0)
     .subscribe((data)=>{
         this.parametros = data['formato'];
         this.subcategoria = data['subcategoria'];
         this.complementario = data['complemento'];
         this.items = data['items'];
         //console.log(this.items);
     });
  }

  guardarItems(f:NgForm){
      this.arr_formato['nomb_eval_t14'] = f.value['nomb_eval_t14'];
     this.arr_formato['id_evalenc_t14'] = f.value['id_evalenc_t14'];
     this.evlu.guardarEvaluacion(this.arr_formato);
     this.posicion = f.value['posicion'] + 1;
     let id_sub = 0;
     let id_complementario = 0;
     this.evlu.buscarCategoria(f.value['id_evalenc_t14'],this.posicion)
     .subscribe((data)=>{
         this.parametros = data['formato'];
         this.subcategoria = data['subcategoria'];
         this.complementario = data['complemento'];
         this.items = data['items'];
     });
     
  }

  validar(id){
      if (id != "C") {
        alert(id);
      }
  }

}
