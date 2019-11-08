import { Component, OnInit } from '@angular/core';
import { ConfiguracionService } from '../service/configuracion.service';
import { FormsModule,NgForm } from '@angular/forms';
import { EvaluacionService } from '../service/evaluacion/evaluacion.service';
import { Router,ActivatedRoute } from '@angular/router';

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
      private evlu:EvaluacionService,
      private route:Router
    ) { }

  ngOnInit() {
    this.conf.consultarformato("","")
    .subscribe((data) => {
      this.formato = data;
    })
  }


  iniciar(f:NgForm){
    this.id_formato = f.value.id_formato;
    this.route.navigateByUrl('/evaluacion/'+f.value.id_formato+'/categoria');
     /*this.evlu.buscarCategoria(f.value.id_formato,0)
     .subscribe((data)=>{
       this.parametros = data['formato'];
       this.items = data['items'];
     });*/
  }

  guardarItems(f:NgForm){
     this.evlu.buscarCategoria(f.value['id_evalenc_t14'])
     .subscribe((data)=>{
       this.parametros = data['formato'];
       this.items = data['items'];
       console.log(this.items);
     });
     
  }

  validar(id){
      if (id != "C") {
        alert(id);
      }
  }

}
