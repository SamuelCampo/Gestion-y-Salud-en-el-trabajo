import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class GlobalesService {

  constructor() { }

  base_url(){
  	return "http://localhost/gestion/api/index.php/";
  }
}
