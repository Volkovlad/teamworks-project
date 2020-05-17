import {SelectionModel} from '@angular/cdk/collections';
import { Component, OnInit,  ViewChild} from '@angular/core';
import {MatPaginator} from '@angular/material/paginator';
import {MatTableDataSource} from '@angular/material/table';
import {Cart} from '../../models/cart';

import {OrderingService} from './services/ordering.service';
import {CartService} from '../root/services/cart.service';
import {Confirm, Order} from '../../models/order';
import {AuthenticationService} from '../../services/authentication.service';
import {Router} from '@angular/router';
import {RootRoutingModule} from "../root/root-routing.module";
import {ToastrService} from "ngx-toastr";
import {PreloaderComponent} from "../shared/components/preloader/preloader.component";


/**
 * @title Table with filtering
 */
@Component({
  selector: 'app-ordering',
  styleUrls: ['./ordering.component.scss'],
  templateUrl: './ordering.component.html'
})
export class OrderingComponent implements OnInit {
  @ViewChild(PreloaderComponent, { static: true }) preloader: PreloaderComponent;
  displayedColumns: string[] = ['image', 'name', 'size', 'quantity', 'price', 'delete'];
  checkValue = true;
  cart: Cart[] = [];
  confirm: Confirm = new Confirm();
  orders: Order[] = [];
  ColumnsOrder: string[] = ['image', 'date', 'order_status', 'payment_status', 'item'];
  displayedColumnsOrder: string[] = ['image', 'date', 'order_status'];
  submit = false;
  listOrders = false;
  details: Cart[] = [];
  viewAddress = false;

  panelOpenState = true ;



  constructor(
    private orderServices: OrderingService,
    private cartServices: CartService,
    private authenticationService: AuthenticationService,
    public router: Router,
    private toastrService: ToastrService
  ) { }

  getTotalCost() {
      let res = 0;
      for ( let i = 0; i < this.cart.length; i++) {
        res += (this.cart[i].price * this.cart[i].quantity);
      }
      return res;
  }


  ngOnInit(): void {
    if (this.authenticationService.currentUserValue == null) {
      this.router.navigateByUrl('/shopping');
    } else {
      this.orderServices.getOrders().subscribe(data => {this.orders = data as Order[]; this.listOrders = this.checkOrder()} );
      this.cartServices.getData().subscribe(data => {this.cart = data['value'];  this.submit = this.check(); });
    }


  }

  onChange() {
    this.checkValue = !this.checkValue;
    this.panelOpenState = true;
    if (this.cart.length > 0 ) {
      this.submit = true;
    } else {
      this.submit = false;
    }
  }

  onConfirm() {
    this.preloader.show();
    this.orderServices.ordering(this.confirm)
      .subscribe(
        res => {
          console.log(res);
          this.orderServices.getOrders().subscribe(data => {this.orders = data as Order[]; this.listOrders = this.checkOrder(); this.viewAddress = false; });
          this.cartServices.getData().subscribe(data => {this.cart = data['value']; this.preloader.hide(); this.submit = this.check(); });
          this.toastrService.success('Your order has confirmed! ' , '', {
            timeOut: 2500,
            positionClass: 'toast-top-full-width',
          });

        },
        error => {
          console.log(error);
        });
  }


  remove(size_id): void {
    this.cartServices.removeItem(size_id).subscribe( res => {
      this.cartServices.getData().subscribe(data => {this.cart = data['value'];  this.submit = this.check(); this.viewAddress = false; });
    });

  }
  view() {
    this.viewAddress = !this.viewAddress;
  }
  check(): boolean {
    if (this.cart.length > 0 ) {
      return true;
    } else {
      return false;
    }
  }
  checkOrder(): boolean {
    if (this.orders.length > 0 ) {
      return true;
    } else {
      return false;
    }
  }

  viewDetailsOrder(order_id) {
    this.orderServices.getDetailsOrder(order_id).subscribe( data => this.details = data['value']);
    this.panelOpenState = false;
  }

}
