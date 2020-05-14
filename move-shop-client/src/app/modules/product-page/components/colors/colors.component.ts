import {Component, Input, OnInit} from '@angular/core';
import {ActivatedRoute, Params} from "@angular/router";
import {ColorShoe} from "../../../../models/color";
import {ProductService} from "../../services/product.service";


@Component({
  selector: 'app-colors',
  templateUrl: './colors.component.html',
  styleUrls: ['./colors.component.scss']
})
export class ColorsComponent implements OnInit {
  @Input() shoes;
  constructor(private productService:ProductService, private route:ActivatedRoute) { }
  shoeId;
  color;
  ngOnInit(): void {
  }

  changeColor(){
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
