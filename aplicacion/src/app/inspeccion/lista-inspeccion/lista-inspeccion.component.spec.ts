import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListaInspeccionComponent } from './lista-inspeccion.component';

describe('ListaInspeccionComponent', () => {
  let component: ListaInspeccionComponent;
  let fixture: ComponentFixture<ListaInspeccionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListaInspeccionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListaInspeccionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
