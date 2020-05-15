import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import {Router} from "@angular/router";
import {Location} from "@angular/common";
@Injectable({
  providedIn: 'root'
})
export class ProductService {

  baseUrl = 'http://localhost:8000/move/shoe/';

  constructor(private http: HttpClient) {
  }


  getData(id, color): Observable<any> {

    return this.http.get(`${this.baseUrl}${id}/${color}/`);
  }

  postData(id, size, quantity): Observable<any> {
    return this.http.get(`http://localhost:8000/move/add/${id}/${size}/${quantity}`);
  }

  postFavorite(id){
    return this.http.get(`http://localhost:8000/move/favorite/add/${id}/`);
  }
}
