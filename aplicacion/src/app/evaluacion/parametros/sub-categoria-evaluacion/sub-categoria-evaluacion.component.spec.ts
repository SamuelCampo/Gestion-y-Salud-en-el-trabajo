import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SubCategoriaEvaluacionComponent } from './sub-categoria-evaluacion.component';

describe('SubCategoriaEvaluacionComponent', () => {
  let component: SubCategoriaEvaluacionComponent;
  let fixture: ComponentFixture<SubCategoriaEvaluacionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SubCategoriaEvaluacionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SubCategoriaEvaluacionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
