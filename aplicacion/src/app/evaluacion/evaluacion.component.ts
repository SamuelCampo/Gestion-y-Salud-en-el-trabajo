import { Component, OnInit } from '@angular/core';
import { ConfiguracionService } from '../service/configuracion.service';
import { FormsModule,NgForm } from '@angular/forms';

@Component({
  selector: 'app-evaluacion',
  templateUrl: './evaluacion.component.html',
  styleUrls: ['./evaluacion.component.css']
})
export class EvaluacionComponent implements OnInit {
  
  formato: any = [];
  
  constructor(
      private conf:ConfiguracionService
    ) { }

  ngOnInit() {
    this.conf.consultarformato("","")
    .subscribe((data) => {
      this.formato = data;
    })
  }


  iniciar(f:NgForm){
    console.log(f.value);
  }

}
