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

  getSearchedProducts(name: string): Observable<any> {
    return this.http.get(`${this.baseUrl}?search=${name}`);
  }
  getFilteredProducts(brand: any, color: any, size: any, price: string): Observable<any> {
    return this.http.get(`${this.baseUrl}`, {params: new HttpParams().set('brand__in', brand)
        .set('color', color).set('size', size).set('price__range', price)} );
  }
}
