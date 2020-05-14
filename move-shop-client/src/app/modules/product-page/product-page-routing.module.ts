import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import {ProductPageComponent} from './product-page.component';

const routes: Routes = [
  {
    path: '',
    component: ProductPageComponent
  },
];

@NgModule({
  imports: [
    RouterModule.forChild(routes)
  ],
  exports: [RouterModule]
})
export class ProductPageRoutingModule { }
