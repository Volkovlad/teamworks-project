import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class OrderingService {

  private baseUrl = 'http://localhost:8000';

  constructor(private http: HttpClient) {
  }
  getData() {
    return this.http.get(`${this.baseUrl}/move/view/`);
  }

  getOrders() {
    return this.http.get(`${this.baseUrl}/move/order/`);
  }
}
