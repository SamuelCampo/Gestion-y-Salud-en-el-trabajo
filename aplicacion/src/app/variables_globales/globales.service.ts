import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class GlobalesService {

  constructor() { }


  url() {
  	const path = "http://localhost/gestion/api/index.php/";
  	return path;
  }
}
