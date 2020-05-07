import {Component, EventEmitter, OnInit, Output} from '@angular/core';

@Component({
  selector: 'app-size',
  templateUrl: './size.component.html',
  styleUrls: ['./size.component.scss']
})
export class SizeComponent implements OnInit {

  constructor() { }
  sizeFilter = [];
  @Output() sizeFilterEvent = new EventEmitter();

  ngOnInit(): void {
  }
  options = [
    {name:'36', value:'36', checked:false},
    {name:'37', value:'37', checked:false},
    {name:'38', value:'38', checked:false},
    {name:'39', value:'39', checked:false},
    {name:'40', value:'40', checked:false},
    {name:'41', value:'41', checked:false},
    {name:'42', value:'42', checked:false},
    {name:'43', value:'43', checked:false},
    {name:'44', value:'44', checked:false},
    {name:'45', value:'45', checked:false}
  ];
  get selectedOptions() {
    this.sizeFilter = this.options
      .filter(opt => opt.checked)
      .map(opt => opt.value);
    this.sizeFilterEvent.emit(this.sizeFilter);
    return this.sizeFilter;
  }

}
