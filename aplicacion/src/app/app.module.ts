import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { IntroduccionComponent } from './introduccion/introduccion.component';
import { Routes, RouterModule } from '@angular/router';
import { Setup2Component } from './setup2/setup2.component';

const routes: Routes = [];
@NgModule({
  declarations: [
    AppComponent,
    IntroduccionComponent,
    Setup2Component
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
