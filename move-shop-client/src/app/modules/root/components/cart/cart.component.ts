import {Component, Input, OnInit} from '@angular/core';
import {CartService} from '../../services/cart.service';
import {Cart} from '../../services/cart';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.scss']
})
export class CartComponent implements OnInit {
  @Input() showCart: boolean;
  cart: Cart[] = [];
  constructor(private cartServices: CartService) { }

  ngOnInit(): void {
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }
  minus(size_id): void {
    this.cartServices.minusOneItem(size_id).subscribe();
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }
  plus(size_id): void {
    this.cartServices.plusOneItem(size_id).subscribe();
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }
  remove(size_id): void {
    this.cartServices.removeItem(size_id).subscribe();
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }

}
