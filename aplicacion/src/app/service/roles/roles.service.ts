import { Injectable } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
import { Roles } from '../../interface/roles';
import { GlobalesService } from '../../variables_globales/globales.service';


@Injectable({
  providedIn: 'root'
})
export class RolesService {

  base_url = "http://tienda.hms.com.co/index.php/";
  headers = new HttpHeaders();
  formData = new FormData();

  constructor(private http:HttpClient,private rol:Roles , public global:GlobalesService){

   }

   getConfig(id:string){
   	return true;
   }
  
	
}
