import { Component, Input, OnInit } from '@angular/core';
import {ShoppingService} from '../../services/shopping.service';
import {Shoe} from '../../../../models/shoe';


@Component({
  selector: 'app-list-of-products',
  templateUrl: './list-of-products.component.html',
  styleUrls: ['./list-of-products.component.scss'],
  providers: [ShoppingService]
})
export class ListOfProductsComponent implements OnInit {
  @Input() shoes;


  constructor(private shoppingService: ShoppingService) {
  }

  ngOnInit() {
    this.shoppingService.getData().subscribe(data => {this.shoes = data as Shoe []});
  }

}
