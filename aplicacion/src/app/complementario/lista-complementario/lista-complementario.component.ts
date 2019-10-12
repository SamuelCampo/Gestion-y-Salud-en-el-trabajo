import { Component, OnInit } from '@angular/core';
import { ComplementarioService } from '../../service/complementario.service';
import { FormsModule,NgForm } from '@angular/forms';

@Component({
  selector: 'app-lista-complementario',
  templateUrl: './lista-complementario.component.html',
  styleUrls: ['./lista-complementario.component.css']
})
export class ListaComplementarioComponent implements OnInit {
  
  load: boolean = true;
  eliminarItems;
  id;
  items;
  listarCmple;
  desc;
  exitValor: boolean = false;

  constructor(private complementario:ComplementarioService){ }

  ngOnInit() {
    this.buscar(this.desc);
  }

   
   buscar(f: NgForm){
     if (f) {
       this.complementario.buscar(this.id,f.value)
       .subscribe((data) => {
         this.listarCmple = data;
         if (this.listarCmple == null){
           this.exitValor = true;
         }
         this.load = false;
         console.log(this.listarCmple);
       });
     }else{
       this.complementario.buscar(this.id,this.desc)
       .subscribe((data) => {
       this.listarCmple = data;
       if (this.listarCmple == null){
         this.exitValor = true;
       }
       this.load = false;
       console.log(this.listarCmple);
     });
     }
   }

   insertar(){

   }

   eliminar(){

   }
}
