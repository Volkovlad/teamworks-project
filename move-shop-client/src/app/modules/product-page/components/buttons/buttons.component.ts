import {Component, Input, OnInit} from '@angular/core';
import {ProductService} from "../../services/product.service";

@Component({
  selector: 'app-buttons',
  templateUrl: './buttons.component.html',
  styleUrls: ['./buttons.component.scss']
})
export class ButtonsComponent implements OnInit {
  @Input() size;
  @Input() id;

  constructor(private productService:ProductService) { }

  ngOnInit(): void {
  }

  addToCart(){
    this.productService.postData(this.id, this.size).subscribe();
  }
}
