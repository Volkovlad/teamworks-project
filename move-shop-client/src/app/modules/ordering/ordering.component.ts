import {SelectionModel} from '@angular/cdk/collections';
import { Component, OnInit,  ViewChild} from '@angular/core';
import {MatPaginator} from '@angular/material/paginator';
import {MatTableDataSource} from '@angular/material/table';
import {Cart} from '../../models/cart';

import {OrderingService} from './services/ordering.service';
import {CartService} from '../root/services/cart.service';
import {Confirm, Order} from '../../models/order';



function sleep(milliseconds) {
  const date = Date.now();
  let currentDate = null;
  do {
    currentDate = Date.now();
  } while (currentDate - date < milliseconds);
}


/**
 * @title Table with filtering
 */
@Component({
  selector: 'app-ordering',
  styleUrls: ['./ordering.component.scss'],
  templateUrl: './ordering.component.html'
})
export class OrderingComponent implements OnInit {
  displayedColumns: string[] = ['image', 'name', 'size', 'quantity', 'price', 'delete'];
  checkValue = true;
  cart: Cart[] = [];
  confirm: Confirm = new Confirm();
  orders: Order[] = [];
  displayedColumnsOrder: string[] = ['image', 'date', 'order_status', 'payment_status', 'item'];
  submit = false;
  viewAddress;

  constructor(private orderServices: OrderingService, private cartServices: CartService) { }

  getTotalCost() {
      let res = 0;
      for ( let i = 0; i < this.cart.length; i++) {
        res += (this.cart[i].price * this.cart[i].quantity);
      }
      return res;
  }


  ngOnInit(): void {
    this.orderServices.getOrders().subscribe(data => {this.orders = data as Order[]; } );
    this.cartServices.getData().subscribe(data => this.cart = data['value']);
  }

  onChange() {
    this.checkValue = !this.checkValue;
    if (this.cart.length > 0 ) {
      this.submit = true;
    }else
      this.submit = false;
  }

  onConfirm() {
    this.orderServices.ordering(this.confirm)
      .subscribe(
       alert );
  }

  remove(size_id): void {
    this.cartServices.removeItem(size_id).subscribe();
    sleep(80);
    this.cartServices.getData().subscribe(data => this.cart = data['value']);

  }
  view() {
    this.viewAddress = !this.viewAddress;
    this.submit = this.check();
    console.log(this.cart.length);
  }
  check(): boolean {
    if (this.cart.length > 0 ) {

      return true;
    } else {
      console.log(this.cart.length);
      return false;
    }
  }

}
