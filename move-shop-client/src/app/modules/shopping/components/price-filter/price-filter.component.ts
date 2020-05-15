import {Component, EventEmitter, OnInit, Output} from '@angular/core';
import { Options, LabelType, ChangeContext, PointerType} from 'ng5-slider';


@Component({
  selector: 'app-price-filter',
  templateUrl: './price-filter.component.html',
  styleUrls: ['./price-filter.component.scss']
})
export class PriceFilterComponent implements OnInit {
  minValue = 2500;
  maxValue = 1;
  priceFilter: string;
  logText = '';

  @Output() priceFilterEvent = new EventEmitter();
  constructor() { }

  options: Options = {
    floor: 1,
    ceil: 2500,

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
  ngOnInit(): void {
  }
  onUserChangeStart(changeContext: ChangeContext): void {
    this.logText = `${this.getChangeContextString(changeContext)}`;
  }

  onUserChange(changeContext: ChangeContext): void {
    this.logText = `${this.getChangeContextString(changeContext)}`;
  }

  onUserChangeEnd(changeContext: ChangeContext): void {
    this.logText = `${this.getChangeContextString(changeContext)}`;
  }
  getChangeContextString(changeContext: ChangeContext): string {
    return `${changeContext.value},` +
      `${changeContext.highValue}`;
  }
  get selectedOptions() {
    this.priceFilter = this.logText;
    this.priceFilterEvent.emit(this.priceFilter);
    return this.priceFilter;
  }

}
