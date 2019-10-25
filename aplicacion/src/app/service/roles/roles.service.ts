import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Roles } from '../../interface/roles';

@Injectable({
  providedIn: 'root'
})
export class RolesService {

  base_url = "http://tienda.hms.com.co/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();

  constructor(private http:HttpClient,private roles:Roles){

   }

   getConfig(id:string){
   	return true;
   }
  
	
}
