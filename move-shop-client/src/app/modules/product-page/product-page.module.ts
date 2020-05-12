import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SizeComponent } from './components/size/size.component';
import { ColorsComponent } from './components/colors/colors.component';
import { ButtonsComponent } from './components/buttons/buttons.component';
import { ProductPageComponent} from './product-page.component';
import { ProductPageRoutingModule} from './product-page-routing.module';

@NgModule({
  declarations: [ProductPageComponent, SizeComponent, ColorsComponent, ButtonsComponent],
  imports: [
    CommonModule, ProductPageRoutingModule
  ]
})
export class ProductPageModule { }
