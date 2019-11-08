import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { IntroduccionComponent } from './introduccion/introduccion.component';
import { Routes, RouterModule } from '@angular/router';
import { Setup2Component } from './setup2/setup2.component';
import { LoginComponent } from './login/login.component';
import { CategoriaComponent } from './categoria/categoria.component';
import { FormatoComponent } from './formato/formato.component';
import { ItemsComponent } from './items/items.component';
import { EvaluacionComponent } from './evaluacion/evaluacion.component';
import { ListaFormatoComponent } from './formato/lista-formato/lista-formato.component';
import { VerFormatoComponent } from './formato/ver-formato/ver-formato.component';
import { ListaCategoriaComponent } from './categoria/lista-categoria/lista-categoria.component';
import { EstandaresComponent } from './estandares/estandares.component';
import { SubEstandaresComponent } from './estandares/sub-estandares/sub-estandares.component';
import { VerCategoriaComponent } from './categoria/ver-categoria/ver-categoria.component';
import { CategoriaPadreComponent } from './categoria-padre/categoria-padre.component';
import { ListaPadreComponent } from './categoria-padre/lista-padre/lista-padre.component';
import { ListarItemsComponent } from './items/listar-items/listar-items.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { TruncateModule } from 'ng2-truncate';
import { ComplementarioComponent } from './complementario/complementario.component';
import { ListaComplementarioComponent } from './complementario/lista-complementario/lista-complementario.component';
import { ListaUsuarioComponent } from './introduccion/lista-usuario/lista-usuario.component';
import { RolesComponent } from './roles/roles.component';
import { InspeccionComponent } from './inspeccion/inspeccion/inspeccion.component';
import { ListaInspeccionComponent } from './inspeccion/lista-inspeccion/lista-inspeccion.component';
import { ModalComponent } from './modals/modal/modal.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { 
   MatDatepickerModule, 
   MatNativeDateModule,
   MatFormFieldModule,
   MatInputModule
} from '@angular/material';
import { ListaComponent } from './roles/lista/lista.component';

import { EntidadComponent } from './entidad/entidad.component';
import { ListaEntidadesComponent } from './entidad/lista-entidades/lista-entidades.component';

import { CategoriasEvaluacionComponent } from './evaluacion/parametros/categorias/categorias.component';
import { SubCategoriaEvaluacionComponent } from './evaluacion/parametros/sub-categoria-evaluacion/sub-categoria-evaluacion.component';


const routes: Routes = [];
@NgModule({
  declarations: [
    AppComponent,
    IntroduccionComponent,
    Setup2Component,
    LoginComponent,
    CategoriaComponent,
    FormatoComponent,
    ItemsComponent,
    EvaluacionComponent,
    ListaFormatoComponent,
    VerFormatoComponent,
    ListaCategoriaComponent,
    EstandaresComponent,
    SubEstandaresComponent,
    VerCategoriaComponent,
    CategoriaPadreComponent,
    ListaPadreComponent,
    ListarItemsComponent,
    DashboardComponent,
    ComplementarioComponent,
    ListaComplementarioComponent,
    ListaUsuarioComponent,
    RolesComponent,
    InspeccionComponent,
    ListaInspeccionComponent,
    ModalComponent,
    ListaComponent,

    EntidadComponent,
    ListaEntidadesComponent,

    CategoriasEvaluacionComponent,

    SubCategoriaEvaluacionComponent,
  ],
  entryComponents: [ModalComponent],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    TruncateModule,
    RouterModule.forRoot(routes),
    BrowserAnimationsModule,
     MatDatepickerModule,
      MatNativeDateModule,
      MatFormFieldModule,
      MatInputModule
  ],
  exports: [
      RouterModule,
      ModalComponent,
      MatDatepickerModule,
      MatNativeDateModule,
      MatFormFieldModule,
      MatInputModule],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
