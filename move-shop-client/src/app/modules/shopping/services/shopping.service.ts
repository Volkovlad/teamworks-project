import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

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
    return this.http.get(`${this.baseUrl}?q=${name}`);
  }
}
