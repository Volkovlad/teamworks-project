import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AboutUsComponent } from './about-us.component';
import { AboutUsPageComponent } from './components/about-us-page/about-us-page.component';



@NgModule({
  declarations: [AboutUsComponent, AboutUsPageComponent],
  imports: [
    CommonModule
  ]
})
export class AboutUsModule { }
