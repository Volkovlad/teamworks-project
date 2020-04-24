import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { Shoe } from '../../../../models/shoe';

@Component({
  selector: 'app-shoe-search',
  templateUrl: './shoe-search.component.html',
  styleUrls: ['./shoe-search.component.scss']
})
export class ShoeSearchComponent implements OnInit {
  @Output() searchProducts = new EventEmitter();

  shoes: Shoe[] = [];
  searchValue: string = '';
  constructor() { }

  ngOnInit(): void {
  }

  onSearch() {
    this.searchValue = this.searchValue.trim();

    this.searchProducts.emit(this.searchValue);
  }
}
