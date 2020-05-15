import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';

@Component({
  selector: 'app-size',
  templateUrl: './size.component.html',
  styleUrls: ['./size.component.scss']
})
export class SizeComponent implements OnInit {
  @Input() shoes;
  @Output() shoeSize = new EventEmitter();
  size;
  constructor() { }

  ngOnInit(): void {
  }
  onItemChange(value){
    this.shoeSize.emit(value);
  }
}
