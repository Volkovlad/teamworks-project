import { Component, Input, OnInit } from '@angular/core';
import {Shoe} from './shoe';
import {HttpService} from './http.service';

@Component({
  selector: 'app-list-of-products',
  templateUrl: './list-of-products.component.html',
  styleUrls: ['./list-of-products.component.scss'],
  providers: [HttpService]
})
export class ListOfProductsComponent implements OnInit {

  shoes: Shoe[] = [];

  constructor(private httpService: HttpService){}

  ngOnInit(){

    this.httpService.getData().subscribe(data => this.shoes = data["shoes"]);
  }

}
