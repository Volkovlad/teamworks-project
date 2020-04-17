import {Component, OnInit} from '@angular/core';
import { Options, LabelType,  } from 'ng5-slider';


@Component({
  selector: 'app-price-filter',
  templateUrl: './price-filter.component.html',
  styleUrls: ['./price-filter.component.scss']
})
export class PriceFilterComponent implements OnInit {
  minValue = 1800;
  maxValue = 1;
  options: Options = {
    floor: 80,
    ceil: 1000,

    getPointerColor: (value: number): string => {
      if (this.minValue >= 10) {
        return 'black';
      }
    },
    translate: (value: number, label: LabelType): string => {
      switch (label) {
        case LabelType.Low:
          return ' $' + value;
        case LabelType.High:
          return ' $' + value;
      }
    }
  };

  constructor() { }

  ngOnInit(): void {
  }
}
