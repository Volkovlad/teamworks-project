import {Component, Input, OnInit} from '@angular/core';
import {ProductService} from '../../services/product.service';
import {Router} from '@angular/router';
import {Location} from '@angular/common'

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


  constructor(private productService: ProductService) { }

  ngOnInit(): void {

  }

  addToCart(){
    this.productService.postData(this.id, this.size, this.quantity).subscribe(res => {
      this.refresh();
    });
  }
  addToFavorite(){
    this.productService.postFavorite(this.id).subscribe(res => {
      this.refresh();
    });
  }

  refresh(): void{
    location.replace(`/products/${this.shoes[0].shoe.id}/${this.shoes[0].color}`);
  }
  minus(): void {
    if(this.quantity > 1){
      this.quantity -= 1;
    }
  }
  plus(): void {
    this.quantity += 1;
  }
}
