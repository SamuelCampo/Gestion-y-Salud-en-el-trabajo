import { Component, OnInit } from '@angular/core';
import { FormsModule,NgForm } from '@angular/forms';
import { ConfiguracionService } from '../service/configuracion.service';
import { Router,ActivatedRoute } from '@angular/router';
import { LoginService } from '../service/login.service';
import { GlobalesService } from '../variables_globales/globales.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  usuario;
  clave;
  id;
  title;

  constructor(
  	private configuracion:ConfiguracionService,
    private router:Router,
    private route:ActivatedRoute,
  	private login:LoginService,
    private global:GlobalesService
  	) { }


  IniciarSesion(f: NgForm){
   // console.log(f.value);
  	this.login.getConfig(f.value)
    .subscribe((newUsuario) => {
      localStorage.setItem('user',JSON.stringify(newUsuario['usr']));
      let keys = localStorage.getItem('user');
      location.reload();
    })
    
  }

  ngOnInit() {
    let title = this.global.titulo('Inicio de Sesión');
      let keys = localStorage.getItem('user');
      if (keys != "") {
        this.router.navigateByUrl(''); 
      }
    }

}
