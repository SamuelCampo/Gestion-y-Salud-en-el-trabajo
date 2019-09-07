import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { IntroduccionComponent } from './introduccion/introduccion.component';
import { Setup2Component } from './setup2/setup2.component';
import { CategoriaComponent } from './categoria/categoria.component';
import { FormatoComponent } from './formato/formato.component';
import { ItemsComponent } from './items/items.component';
import { LoginComponent } from './login/login.component';
import { EvaluacionComponent } from './evaluacion/evaluacion.component';
import { ListaFormatoComponent } from './formato/lista-formato/lista-formato.component';
import { VerFormatoComponent } from './formato/ver-formato/ver-formato.component';
import { ListaCategoriaComponent } from './categoria/lista-categoria/lista-categoria.component';

const routes: Routes = [
	{ path: 'introduccion', component: IntroduccionComponent },
	{ path: 'setup2', component: Setup2Component },
	{ path: 'categoria', component: CategoriaComponent },
	{ path: 'formato', component: FormatoComponent },
	{ path: 'items', component: ItemsComponent },
	{ path: 'login', component: LoginComponent },
	{ path: 'evaluacion', component: EvaluacionComponent },
	{ path: 'listaformato', component: ListaFormatoComponent },
	{ path: 'verFormato/:id', component: VerFormatoComponent },
	{ path: 'listacategoria', component: ListaCategoriaComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
