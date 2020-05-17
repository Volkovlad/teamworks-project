import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import {ActivatedRoute, Params, Router} from '@angular/router';
import {ColorShoe} from '../../../../models/color';
import {ProductService} from '../../services/product.service';


@Component({
  selector: 'app-colors',
  templateUrl: './colors.component.html',
  styleUrls: ['./colors.component.scss']
})
export class ColorsComponent implements OnInit {
  @Input() shoes;
  constructor(private route: ActivatedRoute) { }
  @Output() colorChangeEvent = new EventEmitter();
  color;
  realColor;
  ngOnInit(): void {
  }

  emitColor(){
    this.colorChangeEvent.emit();
}
  radioForColor(){
    this.route.params
      .subscribe(
        (params: Params) => {
         this.realColor = params['color'];
        }
      );
    console.log(this.shoes[0].shoe.color, this.realColor);
    return this.realColor;
}

}
