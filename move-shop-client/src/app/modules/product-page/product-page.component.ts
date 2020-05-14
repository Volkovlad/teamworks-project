import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Params} from '@angular/router';
import {ColorShoe} from '../../models/color';
import {ProductService} from './services/product.service';

@Component({
  selector: 'app-product-page',
  templateUrl: './product-page.component.html',
  styleUrls: ['./product-page.component.scss']
})
export class ProductPageComponent implements OnInit {
  shoes: ColorShoe[] = [];
  shoeId;
  color;
  size = 40;
  constructor(private productService: ProductService, private route: ActivatedRoute) {
  }

  ngOnInit(): void {
    this.route.params
      .subscribe(
        (params: Params) => {
          this.shoeId = +params['shoeID'];
          this.color = params['color'];
        }
      );

    this.productService.getData(this.shoeId, this.color)
      .subscribe(data => {this.shoes = data as ColorShoe[]});

  }
}
