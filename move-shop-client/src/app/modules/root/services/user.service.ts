import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private baseUrl = 'http://localhost:8000';
  constructor(private http: HttpClient) { }

  createUser(user: Object ): Observable<object> {
    return this.http.post(`${this.baseUrl}/move/register/`, user);
  }
  loginUser(user: Object ): Observable<object> {
    return this.http.post(`${this.baseUrl}/move/login/`, user);
  }
}
