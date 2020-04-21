import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ShoppingRoutingModule } from './shopping-routing.module';
import { ShoppingComponent } from './shopping.component';
import { PriceFilterComponent } from './components/price-filter/price-filter.component';
import { SizeComponent } from './components/size/size.component';
import { BrandFilterComponent } from './components/brand-filter/brand-filter.component';
import { ColorFilterComponent } from './components/color-filter/color-filter.component';
import { ListOfProductsComponent } from './components/list-of-products/list-of-products.component';

import {Ng5SliderModule} from "ng5-slider";
import { ShoeSearchComponent } from './components/shoe-search/shoe-search.component';
import {FormsModule, ReactiveFormsModule} from "@angular/forms";

@NgModule({
  declarations: [
    ShoppingComponent,
    PriceFilterComponent,
    SizeComponent,
    BrandFilterComponent,
    ColorFilterComponent,
    ListOfProductsComponent,
    ShoeSearchComponent
  ],

  imports: [
    CommonModule,
    ShoppingRoutingModule,
    ReactiveFormsModule,
    FormsModule,
  ]

})
export class ShoppingModule {
}
