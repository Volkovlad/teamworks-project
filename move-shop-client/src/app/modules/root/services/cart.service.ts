import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Cart} from './cart';
import {AuthenticationService} from '../../../services/authentication.service';


@Injectable({
  providedIn: 'root'
})
export class CartService {

  private baseUrl = 'http://localhost:8000';
  constructor(private http: HttpClient,  private authenticationService: AuthenticationService) {
  }

  getData() {
    return this.http.get(`${this.baseUrl}/move/view/`);
  }
  getFavorite() {
    return this.http.get(`${this.baseUrl}/move/favorite/`);
  }

  minusOneItem(size_id) {
    return this.http.get(`${this.baseUrl}/move/remove/one/${size_id}/`);
  }
  plusOneItem(size_id) {
    return this.http.get(`${this.baseUrl}/move/add/one/${size_id}/`);
  }
  removeItem(size_id) {
    return this.http.get(`${this.baseUrl}/move/remove/${size_id}/`);
  }
  removeFavorite(shoe_id) {
    return this.http.get(`${this.baseUrl}/move/remove/${shoe_id}/`);
  }
}
