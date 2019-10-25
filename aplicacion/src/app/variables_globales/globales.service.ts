import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class GlobalesService {

  constructor() { }


  url() {
  	const path = "http://localhost:4200/index.php/";
  	return path;
  }
}
