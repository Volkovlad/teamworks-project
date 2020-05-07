import { Component, OnInit } from '@angular/core';
import { ShoppingService } from './services/shopping.service';
import { Shoe } from '../../models/shoe';

@Component({
  selector: 'app-shopping',
  templateUrl: './shopping.component.html',
  styleUrls: ['./shopping.component.scss']
})
export class ShoppingComponent implements OnInit {
  shoes: Shoe[] = [];
  brandFilter = [];
  colorFilter = [];
  sizeFilter = [];
  constructor(private shoppingService: ShoppingService) { }

  ngOnInit(): void {
  }

  searchProducts($event) {
    const searchedValue = $event;
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
  acceptFilters(){
    this.shoppingService.getFilteredProducts(this.brandFilter.toString(),
      this.colorFilter.toString(), this.sizeFilter.toString())
      .subscribe(data => {this.shoes = data as Shoe[]});
}
}
