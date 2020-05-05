import {Component, OnInit, Output, EventEmitter} from '@angular/core';

@Component({
  selector: 'app-brand-filter',
  templateUrl: './brand-filter.component.html',
  styleUrls: ['./brand-filter.component.scss']
})
export class BrandFilterComponent implements OnInit {

  constructor() { }
  brandFilter = [];
  @Output() brandFilterEvent = new EventEmitter();
  ngOnInit(): void {
  }
  options = [
    {name:'Nike', value:'Nike', checked:false},
    {name:'Adidas', value:'Adidas', checked:false},
    {name:'ASICS', value:'ASICS', checked:false},
    {name:'New Balance', value:'New Balance', checked:false},
    {name:'Reebok', value:'Reebok', checked:false}
  ]

  get selectedOptions() {
    this.brandFilter = this.options
      .filter(opt => opt.checked)
      .map(opt => opt.value);
    return this.brandFilter;
  }

  onFilterBrand(){
    this.brandFilterEvent.emit(this.brandFilter);
  }
}
