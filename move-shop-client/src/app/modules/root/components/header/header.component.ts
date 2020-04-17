import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  constructor() { }
  showVar = false;

  ngOnInit(): void {
  }

  toggleChild() {
    this.showVar = !this.showVar;
  }
  mouseEnter(div : string){
    console.log("mouse enter : " + div);
  }

  mouseLeave(div : string){
    console.log('mouse leave :' + div);
  }
}

