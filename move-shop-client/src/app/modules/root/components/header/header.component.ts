import {Component, Input, OnInit} from '@angular/core';
import {CartService} from '../../services/cart.service';
import {Cart} from '../../../../models/cart';
import {UserService} from '../../services/user.service';
import {AuthenticationService} from '../../../../services/authentication.service';
import {CartComponent} from '../cart/cart.component';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  showVar = false;
  cartVar = false;
  favoriteVar = false;
  loginVar = false;


  constructor(
    private userServices: UserService,
    private authenticationService: AuthenticationService,
    private favoriteServices: CartService,
    private toastrService: ToastrService,
  ) { }

  ngOnInit(): void {
    if (this.authenticationService.currentUserValue === null) {
      this.loginVar = true;
    }
  }
  closeView() {
    this.showVar = false;
    this.cartVar = false;
    this.favoriteVar = false;
  }

  onLogOut() {
    this.authenticationService.logout();
    this.toastrService.info('Your are logged out !', '', {
      timeOut: 2500,
      positionClass: 'toast-top-full-width',
    });
    if (this.authenticationService.currentUserValue === null) {
      this.loginVar = true;
    }
    this.cartVar = false;
    this.favoriteVar = false;
  }

  toggleChild() {
    this.showVar = !this.showVar;
    this.cartVar = false;
    this.favoriteVar = false;
  }

  viewCart() {
    if (this.authenticationService.currentUserValue === null) {
      this.toastrService.info('Please log in if you want see your cart!', '', {
        timeOut: 2500,
        positionClass: 'toast-top-left',
      });
    } else {
      this.favoriteServices.getData();
      this.cartVar = !this.cartVar;
    }
    this.showVar = false;
    this.favoriteVar = false;
  }

  viewFavorite() {
    if (this.authenticationService.currentUserValue === null) {
      this.toastrService.info('Please log in if you want see your favorites products!', '', {
        timeOut: 2500,
        positionClass: 'toast-top-left',
      });
    } else {
      this.favoriteServices.getFavorite();
      this.favoriteVar = !this.favoriteVar;
    }
    this.showVar = false;
    this.cartVar = false;
  }


  changeLoginButtonState($event) {
    // this.loginVar = $event;
    this.loginVar = false;
  }

  receivVar($event) {
    this.cartVar = $event;
  }

  receivLoginVar($event) {
    this.showVar = $event;
  }
  receivAutorizationVar($event) {
    this.loginVar = $event;
  }


}

