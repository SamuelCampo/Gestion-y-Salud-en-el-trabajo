import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListaFormatoComponent } from './lista-formato.component';

describe('ListaFormatoComponent', () => {
  let component: ListaFormatoComponent;
  let fixture: ComponentFixture<ListaFormatoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListaFormatoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListaFormatoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
