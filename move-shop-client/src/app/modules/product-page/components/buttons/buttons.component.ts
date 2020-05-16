import {Component, Input, OnInit, ViewChild} from '@angular/core';
import {ProductService} from '../../services/product.service';
import {Router} from '@angular/router';
import {Location} from '@angular/common'
import {AuthenticationService} from "../../../../services/authentication.service";
import {PreloaderComponent} from "../../../shared/components/preloader/preloader.component";

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
  @ViewChild(PreloaderComponent, { static: true }) preloader: PreloaderComponent;

  @Input() size;
  @Input() id;
  @Input() shoes;
  quantity = 1;


  constructor(
    private productService: ProductService,
    private authenticationService: AuthenticationService
  ) { }

  ngOnInit(): void {

  }

  addToCart() {

    if(this.authenticationService.currentUserValue != null){
      if(this.size != null){
        this.preloader.show();
        this.productService.postData(this.id, this.size, this.quantity)
          .subscribe(res => {this.refresh(); console.log(this.size); this.preloader.hide()});
      }
      else{
        alert('Please choose size of shoe') ;
      }
    }
    else{
      alert('Please sign in if you want to add this shoe in cart!');
    }

  /*  this.preloader.show();
    this.authenticationService.currentUserValue != null ? (this.size != null ?  this.productService.postData(this.id, this.size, this.quantity)
      .subscribe(res => {this.refresh(); console.log(this.size); this.preloader.hide()}) :  this.preloader.hide(), alert('Please choose size of shoe') ) :
*/

  }
  addToFavorite() {
    this.preloader.show();
    this.authenticationService.currentUserValue != null ? this.productService.postFavorite(this.id)
      .subscribe(res => { this.refresh(); this.preloader.hide(); }) : alert('Please sign in if you want to add this shoe in cart!');

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
