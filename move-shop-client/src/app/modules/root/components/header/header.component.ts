import { Component, OnInit } from '@angular/core';
import {CartService} from '../../services/cart.service';
import {Cart} from '../../services/cart';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  constructor(private cartServices: CartService) { }
  showVar = false;
  cartVar = false;
  favoriteVar = false;

  ngOnInit(): void {
  }

  toggleChild() {
    this.showVar = !this.showVar;
    this.cartVar = false;
    this.favoriteVar = false;
  }

  viewCart() {
    this.cartVar = !this.cartVar;
    this.showVar = false;
    this.favoriteVar = false;
  }

  viewFavorite(){
    this.favoriteVar = !this.favoriteVar;
    this.showVar = false;
    this.cartVar = false;
  }

}

