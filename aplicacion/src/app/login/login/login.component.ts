import { Component, OnInit } from '@angular/core';
import { HttpClient , HttpHeaders} from '@angular/common/http';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

	IniciarSesion;
	descripcion1;
  	constructor(private http:HttpClient) { }

  ngOnInit() {
  }

}
