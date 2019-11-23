import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ItemsEComponent } from './items-e.component';

describe('ItemsEComponent', () => {
  let component: ItemsEComponent;
  let fixture: ComponentFixture<ItemsEComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ItemsEComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ItemsEComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
