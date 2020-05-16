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
  brandFilter = [];
  colorFilter = [];
  sizeFilter = [];
  priceFilter: string;
  constructor(private shoppingService: ShoppingService) { }

  ngOnInit(): void {
  }

  searchProducts($event) {
    const searchedValue = $event;

  this.preloader.show();
    this.shoppingService.getSearchedProducts(searchedValue)
      .subscribe(data => {this.shoes = data as Shoe[]});
  }
  filterBrand($event){
    const brandFilter = $event;
    this.brandFilter = brandFilter;
  }
  filterColor($event){
    const colorFilter = $event;
    this.colorFilter = colorFilter;

  }
  filterSize($event){
    const sizeFilter = $event;
    this.sizeFilter = sizeFilter;
  }
  filterPrice($event){
    const priceFilter = $event;
    this.priceFilter = priceFilter;
  }
  acceptFilters(){
    this.shoppingService.getFilteredProducts(this.brandFilter.toString(),
      this.colorFilter.toString(), this.sizeFilter.toString(), this.priceFilter)
      .subscribe(data => {this.shoes = data as Shoe[]});
}
}
