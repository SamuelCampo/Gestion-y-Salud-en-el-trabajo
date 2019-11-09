import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { IntroduccionComponent } from './introduccion/introduccion.component';
import { ListaUsuarioComponent } from './introduccion/lista-usuario/lista-usuario.component';
import { Setup2Component } from './setup2/setup2.component';
import { CategoriaComponent } from './categoria/categoria.component';
import { FormatoComponent } from './formato/formato.component';
import { ItemsComponent } from './items/items.component';
import { LoginComponent } from './login/login.component';
import { EvaluacionComponent } from './evaluacion/evaluacion.component';
import { ListaFormatoComponent } from './formato/lista-formato/lista-formato.component';
import { VerFormatoComponent } from './formato/ver-formato/ver-formato.component';
import { ListaCategoriaComponent } from './categoria/lista-categoria/lista-categoria.component';
import { VerCategoriaComponent } from './categoria/ver-categoria/ver-categoria.component';
import { CategoriaPadreComponent } from './categoria-padre/categoria-padre.component';
import { ListaPadreComponent } from './categoria-padre/lista-padre/lista-padre.component';
import { ListarItemsComponent } from './items/listar-items/listar-items.component' ;
import { DashboardComponent } from './dashboard/dashboard.component';
import { ComplementarioComponent } from './complementario/complementario.component';
import { ListaComplementarioComponent } from './complementario/lista-complementario/lista-complementario.component';
import { RolesComponent } from './roles/roles.component';
import { InspeccionComponent } from './inspeccion/inspeccion/inspeccion.component';
import { ListaComponent } from './roles/lista/lista.component';
import { EntidadComponent } from './entidad/entidad.component';
import { ListaEntidadesComponent } from './entidad/lista-entidades/lista-entidades.component';
import { CategoriasEvaluacionComponent } from './evaluacion/parametros/categorias/categorias.component';

import { ListaInspeccionComponent } from './inspeccion/lista-inspeccion/lista-inspeccion.component';


import { Paso1Component } from './paso1/paso1.component';
import { Paso2Component } from './paso1/paso2/paso2.component';
import { Paso3Component } from './paso1/paso3/paso3.component';

import { SubCategoriaEvaluacionComponent } from './evaluacion/parametros/sub-categoria-evaluacion/sub-categoria-evaluacion.component';
import { ItemsEComponent } from './evaluacion/parametros/items-e/items-e.component';


const routes: Routes = [
	{ path: '', component: DashboardComponent },
	{ path: 'usuario', component: IntroduccionComponent },
	{ path: 'usuario/:id', component: IntroduccionComponent },
	{ path: 'lista-usuario', component: ListaUsuarioComponent },
	{ path: 'setup2', component: Setup2Component },
	{ path: 'nueva_categoria', component: CategoriaComponent },
	{ path: 'items', component: ItemsComponent },
	{ path: 'items/:id', component: ItemsComponent },
	{ path: 'login', component: LoginComponent },
	{ path: 'listaformato', component: ListaFormatoComponent },
	{ path: 'formato', component: FormatoComponent },
	{ path: 'verFormato/:id', component: VerFormatoComponent },
	{ path: 'listacategoria', component: ListaCategoriaComponent },
	{ path: 'vercategoria/:id', component: VerCategoriaComponent },
	{ path: 'estructura', component: CategoriaPadreComponent },
	{ path: 'estructura/:id', component: CategoriaPadreComponent },
	{ path: 'listarEstructura', component: ListaPadreComponent },
	{ path: 'listarItems' , component: ListarItemsComponent},
	{ path: 'listarComplementario' , component: ListaComplementarioComponent },
	{ path: 'complementario' , component: ComplementarioComponent },
	{ path: 'complementario/:id' , component: ComplementarioComponent },
	{ path: 'evaluacion', component: EvaluacionComponent },
	{ path: 'evaluacion/:id/categoria' , component: CategoriasEvaluacionComponent },
	{ path: 'step2/:id/:formato' , component: SubCategoriaEvaluacionComponent },
	{ path: 'roles', component: RolesComponent },
	{ path: 'lista_roles' , component: ListaComponent },
	{ path: 'inspeccion', component: InspeccionComponent },
	{ path: 'entidad', component: EntidadComponent },
	{ path: 'lista-entidades', component: ListaEntidadesComponent },

	{ path: 'items_e/:id/:evaluacion' , component: ItemsEComponent },

	{ path: 'lista-inspeccion', component: ListaInspeccionComponent },

	{ path: 'paso1/:id', component: Paso1Component },
	{ path: 'paso2', component: Paso2Component },
	{ path: 'paso3', component: Paso3Component }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
