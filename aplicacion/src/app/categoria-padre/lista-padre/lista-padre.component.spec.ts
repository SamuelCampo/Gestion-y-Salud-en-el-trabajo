import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListaPadreComponent } from './lista-padre.component';

describe('ListaPadreComponent', () => {
  let component: ListaPadreComponent;
  let fixture: ComponentFixture<ListaPadreComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListaPadreComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListaPadreComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
