import {SelectionModel} from '@angular/cdk/collections';
import { Component, OnInit,  ViewChild} from '@angular/core';
import {MatPaginator} from '@angular/material/paginator';
import {MatTableDataSource} from '@angular/material/table';
import {Cart} from '../../models/cart';


export interface Products {
  name: string;
  size: number;
  amount: number;
  cost: number;
}

const ELEMENT_DATA: Products[] = [
  { name: 'Nike Air Max 270', size: 44, amount: 1, cost: 120},
  { name: 'Reebok Fury', size: 43, amount: 2, cost: 98},
  { name: 'New Balance 991', size: 41, amount: 1, cost: 149},
  { name: 'Nike Air Max 270', size: 44, amount: 1, cost: 120},
  { name: 'Reebok Fury', size: 43, amount: 2, cost: 98},
  { name: 'New Balance 991', size: 41, amount: 1, cost: 149},
];

/**
 * @title Table with filtering
 */
@Component({
  selector: 'app-ordering',
  styleUrls: ['./ordering.component.scss'],
  templateUrl: './ordering.component.html'
})
export class OrderingComponent implements OnInit {
  displayedColumns: string[] = [ 'name', 'size', 'amount', 'cost'];
  dataSource = new MatTableDataSource(ELEMENT_DATA);
  checkValue = true;
  cart: Cart[] = [];

  applyFilter(event: Event) {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }

  getTotalCost() {
    return ELEMENT_DATA.map(t => t.cost).reduce((acc, value) => acc + value, 0);
  }


  constructor() { }


  ngOnInit(): void {
  }

  onChange() {
    this.checkValue = !this.checkValue;
  }

}
