import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ConfiguracionService {

  constructor(private http:HttpClient) {
   }


   getConfig() {
	  return this.http.get('https://jsonplaceholder.typicode.com/users');
	}
}