import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';

import { ToastrService } from 'ngx-toastr';

@Injectable()
export class ErrorInterceptor implements HttpInterceptor {
  constructor(private toastrService: ToastrService) {}

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    return next.handle(request).pipe(catchError(err => {
      if (err.status === 500) {
        this.toastrService.error('Something went wrong. Please, try again later', '', {
          timeOut: 10000,
          positionClass: 'toast-top-full-width',
        });
      }

      const error = err.error.message || err.statusText;
      return throwError(error);
    }));
  }
}
