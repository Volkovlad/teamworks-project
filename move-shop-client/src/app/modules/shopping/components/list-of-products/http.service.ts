import {Injectable, Input} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from "rxjs";


@Injectable()
export class HttpService {
  baseUrl = 'http://localhost:8000/move/shoe/';
  constructor(private http: HttpClient) { }
  getData(): Observable<any> {
    return this.http.get(this.baseUrl);
  }
  getSearched(name: string): Observable<any>{
    return this.http.get(this.baseUrl+'?q='+name);
  }
}
