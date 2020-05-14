import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-size',
  templateUrl: './size.component.html',
  styleUrls: ['./size.component.scss']
})
export class SizeComponent implements OnInit {
  @Input() shoes;
  constructor() { }

  ngOnInit(): void {
    // console.log(this.shoes);
  }

}
