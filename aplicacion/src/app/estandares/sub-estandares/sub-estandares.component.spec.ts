import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SubEstandaresComponent } from './sub-estandares.component';

describe('SubEstandaresComponent', () => {
  let component: SubEstandaresComponent;
  let fixture: ComponentFixture<SubEstandaresComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SubEstandaresComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SubEstandaresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
