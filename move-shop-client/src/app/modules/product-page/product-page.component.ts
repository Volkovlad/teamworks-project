import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Params, Router} from '@angular/router';
import {ColorShoe} from '../../models/color';
import {ProductService} from './services/product.service';
import { HostListener } from '@angular/core';


@Component({
  selector: 'app-product-page',
  templateUrl: './product-page.component.html',
  styleUrls: ['./product-page.component.scss']
})
export class ProductPageComponent implements OnInit {
  shoes: ColorShoe[] = [];
  shoeId;
  color;
  size;
  constructor(private productService: ProductService, private route: ActivatedRoute, private router: Router) {
  }

  ngOnInit(): void {
    this.testMethod();
  }

  @HostListener('window:popstate', ['$event'])
  onPopState(event) {
    this.testMethod();
  }

  changeColor($event){
    this.router.navigateByUrl(`/products/${this.shoeId}/${this.color}`);
    this.productService.getData(this.shoeId, this.color)
      .subscribe(data => {this.shoes = data as ColorShoe[]});
  }

  testMethod(){
    this.route.params
      .subscribe(
        (params: Params) => {
          this.shoeId = +params['shoeID'];
          this.color = params['color'];
          this.productService.getData(this.shoeId, this.color)
            .subscribe(data => {this.shoes = data as ColorShoe[]});
        }
      );
  }

  changeSize($event){
    const shoeSize = $event;
    this.size = shoeSize;
  }

}
