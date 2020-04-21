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
  name: string;

  constructor(private httpService: HttpService) {
  }

  ngOnInit() {
    this.name = '';
    this.httpService.getData().subscribe(data => this.shoes = data["shoes"]);
  }

  private searchShoes() {
    this.shoes = [];
    this.httpService.getSearched(this.name)
      .subscribe(data => this.shoes = data["shoes"]);
  }

  onSubmit() {
    this.searchShoes();
  }
}
