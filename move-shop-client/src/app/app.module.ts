import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FooterComponent } from '../components/footer/footer.component';
import { BrandFilterComponent } from '../components/brand-filter/brand-filter.component';
import { ListOfProductsComponent } from '../components/list-of-products/list-of-products.component';
import {HeaderComponent} from '../components/header/header.component';
import {ColorFilterComponent} from '../components/color-filter/color-filter.component';


@NgModule({
  declarations: [
    AppComponent,
    FooterComponent,
    BrandFilterComponent,
    ListOfProductsComponent,
    HeaderComponent,
    ColorFilterComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
