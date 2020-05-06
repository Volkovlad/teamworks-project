import { Component, OnInit, ViewChild } from '@angular/core';
import { ShoppingService } from './services/shopping.service';
import { Shoe } from '../../models/shoe';
import { PreloaderComponent } from '../shared/components/preloader/preloader.component';
import { finalize } from 'rxjs/operators';

@Component({
  selector: 'app-shopping',
  templateUrl: './shopping.component.html',
  styleUrls: ['./shopping.component.scss']
})
export class ShoppingComponent implements OnInit {
  @ViewChild(PreloaderComponent, { static: true }) preloader: PreloaderComponent;

  shoes: Shoe[] = [];

  constructor(private shoppingService: ShoppingService) { }

  ngOnInit(): void {
  }

  searchProducts($event) {
    const searchedValue = $event;
    this.preloader.show();

    this.shoppingService.getSearchedProducts(searchedValue).pipe(finalize(() => {
      this.preloader.hide();
    })).subscribe(data => this.shoes = data['shoes']);
  }
}
