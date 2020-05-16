import {Component, Input, OnInit} from '@angular/core';
import {ProductService} from '../../services/product.service';
import {Router} from '@angular/router';
import {Location} from '@angular/common'
import {AuthenticationService} from "../../../../services/authentication.service";
import {ToastrService} from "ngx-toastr";

function sleep(milliseconds) {
  const date = Date.now();
  let currentDate = null;
  do {
    currentDate = Date.now();
  } while (currentDate - date < milliseconds);
}

@Component({
  selector: 'app-buttons',
  templateUrl: './buttons.component.html',
  styleUrls: ['./buttons.component.scss']
})
export class ButtonsComponent implements OnInit {
  @Input() size;
  @Input() id;
  @Input() shoes;
  quantity = 1;


  constructor(
    private productService: ProductService,
    private authenticationService: AuthenticationService,
    private toastrService: ToastrService
  ) { }

  ngOnInit(): void {
  }

  addToCart() {

    this.authenticationService.currentUserValue != null ? (this.size != null ? this.productService.postData(this.id, this.size, this.quantity)
      .subscribe(res => {this.refresh(); console.log(this.size); }) :
      this.toastrService.warning('Please choose size of shoe' , '', {
      timeOut: 2500,
      positionClass: 'toast-top-full-width',
    })) :
      this.toastrService.warning('Please sign in if you want to add this shoe in cart!' , '', {
        timeOut: 2500,
        positionClass: 'toast-top-full-width',
      });

  }
  addToFavorite() {
    this.authenticationService.currentUserValue != null ? this.productService.postFavorite(this.id)
      .subscribe(res => { this.refresh(); }) :
      this.toastrService.warning('Please sign in if you want to add this shoe in cart!' , '', {
        timeOut: 2500,
        positionClass: 'toast-top-full-width',
      });
  }

  refresh(): void{
    location.replace(`/products/${this.shoes[0].shoe.id}/${this.shoes[0].color}`);
  }
  minus(): void {
    if (this.quantity > 1){
      this.quantity -= 1;
    }
  }
  plus(): void {
    this.quantity += 1;
  }
}
