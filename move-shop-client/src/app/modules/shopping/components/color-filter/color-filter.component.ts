import {Component, EventEmitter, OnInit, Output} from '@angular/core';

@Component({
  selector: 'app-color-filter',
  templateUrl: './color-filter.component.html',
  styleUrls: ['./color-filter.component.scss']
})
export class ColorFilterComponent implements OnInit {

  constructor() { }
  colorFilter = [];
  @Output() colorFilterEvent = new EventEmitter();

  ngOnInit(): void {
  }
  options = [
    {name:'Black', value:'Black', checked:false},
    {name:'White', value:'White', checked:false},
    {name:'Red', value:'Red', checked:false},
    {name:'Green', value:'Green', checked:false},
    {name:'Blue', value:'Blue', checked:false},
    {name:'Gray', value:'Gray', checked:false}
  ]
  get selectedOptions() {
    this.colorFilter = this.options
      .filter(opt => opt.checked)
      .map(opt => opt.value);
    this.colorFilterEvent.emit(this.colorFilter);
    return this.colorFilter;
  }

}
