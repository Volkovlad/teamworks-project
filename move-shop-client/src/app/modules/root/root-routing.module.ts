import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { RootComponent } from './root.component';

const routes: Routes = [
  {
    path     : '',
    component: RootComponent,
    children : [

      {
        path: 'ordering',
        loadChildren: () => import('../ordering/ordering.module').then(m => m.OrderingModule),
      },
      {
        path: 'faq',
        loadChildren: () => import('../faq/faq.module').then(m => m.FaqModule),
      },

      {
        path        : 'home',
        loadChildren: () => import('../home-page/home-page.module').then(m => m.HomePageModule),
      },
      {
        path        : 'shopping',
        loadChildren: () => import('../shopping/shopping.module').then(m => m.ShoppingModule),
      },



      {
        path      : '**',
        redirectTo: 'home',
        pathMatch : 'full'
      },

    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class RootRoutingModule { }
