import { Component, OnInit } from '@angular/core';

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
  listarItems;

  constructor() { }

  ngOnInit() {

  }

 
}
