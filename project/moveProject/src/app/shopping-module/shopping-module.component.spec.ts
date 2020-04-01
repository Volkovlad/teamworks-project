import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ShoppingModuleComponent } from './shopping-module.component';

describe('ShoppingModuleComponent', () => {
  let component: ShoppingModuleComponent;
  let fixture: ComponentFixture<ShoppingModuleComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ShoppingModuleComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ShoppingModuleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
