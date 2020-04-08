import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ShoppingRoutingModule } from './shopping-routing.module';
import { ShoppingComponent } from './shopping.component';
import { PriceFilterComponent } from './components/price-filter/price-filter.component';
import { SizeComponent } from './components/size/size.component';
import { BrandFilterComponent } from './components/brand-filter/brand-filter.component';
import { ColorFilterComponent } from './components/color-filter/color-filter.component';
import { ListOfProductsComponent } from './components/list-of-products/list-of-products.component';

@NgModule({
  declarations: [
    ShoppingComponent,
    PriceFilterComponent,
    SizeComponent,
    BrandFilterComponent,
    ColorFilterComponent,
    ListOfProductsComponent
  ],
  imports: [
    CommonModule,
    ShoppingRoutingModule
  ]
})
export class ShoppingModule { }
