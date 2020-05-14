import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Observable} from "rxjs";
import {Confirm, Order} from "../../../models/order";

@Injectable({
  providedIn: 'root'
})
export class OrderingService {

  private baseUrl = 'http://localhost:8000';

  constructor(private http: HttpClient) {
  }
  getData() {
  }

  getOrders() {
    return this.http.get(`${this.baseUrl}/move/order/`);
  }
  ordering(order: Confirm) {
    const body = {name: order.name, surname: order.surname, address: order.address, phone: order.phone};
    return this.http.post(`${this.baseUrl}/move/confirm/`, body);
  }
}
