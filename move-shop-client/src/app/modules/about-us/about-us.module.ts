import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AboutUsComponent } from './about-us.component';
import { AboutUsPageComponent } from './components/about-us-page/about-us-page.component';
import {AboutUsRoutingModule} from './about-us-routing.module';



@NgModule({
  declarations: [AboutUsComponent, AboutUsPageComponent],
  imports: [
    CommonModule,
    AboutUsRoutingModule
  ]
})
export class AboutUsModule { }
