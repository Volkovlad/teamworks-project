import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { HomePageRoutingModule } from './home-page-routing.module';
import { HomePageComponent } from './home-page.component';

import { MainPageComponent } from './components/main-page/main-page.component';


@NgModule({
  declarations: [
    HomePageComponent,
    MainPageComponent
  ],
  imports: [
    CommonModule,
    HomePageRoutingModule
  ]
})
export class HomePageModule { }
