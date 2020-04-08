import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { RootRoutingModule } from './root-routing.module';
import { RootComponent } from './root.component';

import { FooterComponent } from './components/footer/footer.component';
import { HeaderComponent } from './components/header/header.component';

@NgModule({
  declarations: [
    RootComponent,
    FooterComponent,
    HeaderComponent
  ],
  imports: [
    CommonModule,
    RootRoutingModule
  ]
})
export class RootModule { }
