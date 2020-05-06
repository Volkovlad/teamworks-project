import { NgModule, CUSTOM_ELEMENTS_SCHEMA, ModuleWithProviders } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PreloaderComponent } from './components/preloader/preloader.component';

@NgModule({
  imports: [
    CommonModule,
  ],
  declarations: [
    PreloaderComponent
  ],
  exports: [
    PreloaderComponent
  ],
  schemas: [
    CUSTOM_ELEMENTS_SCHEMA
  ]
})
export class SharedModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule : SharedModule,
      providers: []
    };
  }
}
