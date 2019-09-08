import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CategoriaPadreComponent } from './categoria-padre.component';

describe('CategoriaPadreComponent', () => {
  let component: CategoriaPadreComponent;
  let fixture: ComponentFixture<CategoriaPadreComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CategoriaPadreComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CategoriaPadreComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
