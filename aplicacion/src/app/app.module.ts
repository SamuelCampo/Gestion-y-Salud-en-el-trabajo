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
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    RouterModule.forRoot(routes)
  ],
  exports: [RouterModule],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
