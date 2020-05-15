import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
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
  constructor(private productService:ProductService) { }
  @Output() colorChangeEvent = new EventEmitter();
  ngOnInit(): void {
  }

  emitColor(){
    this.colorChangeEvent.emit();
    window.location.reload();
}

}
