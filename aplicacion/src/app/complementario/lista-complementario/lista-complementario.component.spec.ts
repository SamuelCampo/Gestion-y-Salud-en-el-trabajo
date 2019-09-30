import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListaComplementarioComponent } from './lista-complementario.component';

describe('ListaComplementarioComponent', () => {
  let component: ListaComplementarioComponent;
  let fixture: ComponentFixture<ListaComplementarioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListaComplementarioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListaComplementarioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
