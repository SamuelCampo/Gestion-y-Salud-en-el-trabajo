import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { IntroduccionComponent } from './introduccion/introduccion.component';
import { Setup2Component } from './setup2/setup2.component';


const routes: Routes = [
	{ path: 'introduccion', component: IntroduccionComponent },
	{ path: 'setup2', component: Setup2Component },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
