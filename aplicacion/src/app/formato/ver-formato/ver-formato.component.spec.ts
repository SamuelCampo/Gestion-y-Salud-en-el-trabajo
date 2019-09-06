import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VerFormatoComponent } from './ver-formato.component';

describe('VerFormatoComponent', () => {
  let component: VerFormatoComponent;
  let fixture: ComponentFixture<VerFormatoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VerFormatoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VerFormatoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
