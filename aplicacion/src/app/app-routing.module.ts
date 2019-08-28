import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { IntroduccionComponent } from './introduccion/introduccion.component';


const routes: Routes = [
	{ path: 'introduccion', component: IntroduccionComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
