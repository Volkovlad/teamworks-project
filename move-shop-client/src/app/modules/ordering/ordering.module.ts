import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { OrderingComponent } from './ordering.component';
import {OrderingRoutingModule} from './ordering-routing.module';
import {MatSliderModule} from '@angular/material/slider';
import {MatTableModule} from '@angular/material/table';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatPaginatorModule} from '@angular/material/paginator';
import {FormsModule} from '@angular/forms';
import {MatExpansionModule} from '@angular/material/expansion';
import {MatFormFieldModule} from "@angular/material/form-field";






@NgModule({
  declarations: [OrderingComponent],
  imports: [
    CommonModule,
    OrderingRoutingModule,
    MatSliderModule,
    MatTableModule,
    MatCheckboxModule,
    MatPaginatorModule,
    FormsModule,
    MatExpansionModule,
    MatFormFieldModule,

  ]
})
export class OrderingModule { }
