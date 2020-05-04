import {Component, Input, OnInit} from '@angular/core';
import {CartService} from '../../services/cart.service';
import {Cart} from '../../services/cart';
import {map} from 'rxjs/operators';
import {AuthenticationService} from '../../../../services/authentication.service';

function sleep(milliseconds) {
  const date = Date.now();
  let currentDate = null;
  do {
    currentDate = Date.now();
  } while (currentDate - date < milliseconds);
}

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.scss']
})
export class CartComponent implements OnInit {
  @Input() showCart: boolean;
  cart: Cart[] = [];
  check: boolean;
  constructor(private cartServices: CartService,  private authenticationService: AuthenticationService) { }

  ngOnInit(): void {
    if (this.authenticationService.currentUserValue != null) {
      this.cartServices.getData().subscribe(data => this.cart = data['value']);
    }

  }
  minus(size_id, quantity): void {
    if( quantity > 1){
      this.cartServices.minusOneItem(size_id).subscribe();
      sleep(50);
      this.cartServices.getData().subscribe(data => this.cart = data['value']);
    }
  }
  plus(size_id): void {
    this.cartServices.plusOneItem(size_id).subscribe();
    sleep(50);
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }
  remove(size_id): void {
    this.cartServices.removeItem(size_id).subscribe();
    sleep(50);
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }
  sum() : number {
    let res = 0;
    for ( let i = 0; i < this.cart.length; i++) {
      res += (this.cart[i].price * this.cart[i].quantity);
    }
    return res;
  }

  view() : void{
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }


}
