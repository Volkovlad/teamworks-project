import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private baseUrl = 'http://localhost:8000/move/user';
  constructor(private http: HttpClient) { }

  createUser(user: Object ): Observable<object> {
    return this.http.post(`${this.baseUrl}/`, user);
  }
}
