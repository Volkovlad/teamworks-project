import { Component, Input, OnInit } from '@angular/core';
import {ShoppingService} from '../../services/shopping.service';

@Component({
  selector: 'app-list-of-products',
  templateUrl: './list-of-products.component.html',
  styleUrls: ['./list-of-products.component.scss'],
  providers: [ShoppingService]
})
export class ListOfProductsComponent implements OnInit {
  @Input() shoes;


  name: string;

  constructor(private shoppingService: ShoppingService) {
  }

  ngOnInit() {
    this.name = '';
    this.shoppingService.getData().subscribe(data => this.shoes = data["shoes"]);
  }

}
