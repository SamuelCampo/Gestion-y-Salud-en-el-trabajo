import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListarItemsComponent } from './listar-items.component';

describe('ListarItemsComponent', () => {
  let component: ListarItemsComponent;
  let fixture: ComponentFixture<ListarItemsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListarItemsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListarItemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
