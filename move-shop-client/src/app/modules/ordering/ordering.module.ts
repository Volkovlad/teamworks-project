import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OrderingComponent } from './ordering.component';
import {OrderingRoutingModule} from './ordering-routing.module';
import {MatSliderModule} from '@angular/material/slider';
import {MatTableModule} from "@angular/material/table";
import {MatCheckboxModule} from "@angular/material/checkbox";






@NgModule({
  declarations: [OrderingComponent],
  imports: [
    CommonModule,
    OrderingRoutingModule,
    MatSliderModule,
    MatTableModule,
    MatCheckboxModule
  ]
})
export class OrderingModule { }
