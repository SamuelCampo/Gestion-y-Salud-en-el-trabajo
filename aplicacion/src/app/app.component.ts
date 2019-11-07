import { Component , OnInit } from '@angular/core';
import { Router,ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  title = 'aplicacion';
  keys: boolean = false;
  user;

  constructor(private router:Router) { }

  ngOnInit(){
  	let id = localStorage.getItem('user');
    this.user = JSON.parse(localStorage.getItem('user'));
  	console.log(id);
  	if (id != null) {
  		this.keys = true;
  	}else{
  		this.keys = false;
  		this.router.navigateByUrl('/login');
  	}
  }
}
