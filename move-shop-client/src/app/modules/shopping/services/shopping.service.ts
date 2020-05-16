import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import 'rxjs/add/operator/map';

@Injectable({
  providedIn: 'root'
})
export class ShoppingService {

  baseUrl = 'http://localhost:8000/move/shoe/';

  constructor(private http: HttpClient) { }

  getData(): Observable<any> {

    return this.http.get(this.baseUrl);
  }

  getFilteredProducts(search: string, brand: any, color: any, size: any, price: string): Observable<any> {
    return this.http.get(`${this.baseUrl}`, {params: new HttpParams().set('search', search)
        .set('brand__in', brand)
        .set('color', color).set('size', size).set('price__range', price)} );
  }
}
