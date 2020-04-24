import {SelectionModel} from '@angular/cdk/collections';
import { Component, OnInit } from '@angular/core';
import {MatTableDataSource} from '@angular/material/table';


export interface Items {
  name: string;
  position: number;
  size: number;
  amount: number;
  cost: number;

}

const ELEMENT_DATA: Items[] = [
  {position: 1, name: 'Nike Air Max 270', size: 44, amount: 1, cost: 120},
  {position: 2, name: 'Reebok Fury', size: 43, amount: 2, cost: 98},
  {position: 3, name: 'New Balance 991', size: 41, amount: 1, cost: 149},

];



@Component({
  selector: 'app-ordering',
  styleUrls: ['./ordering.component.scss'],
  templateUrl: './ordering.component.html'
})

export class OrderingComponent implements OnInit {

  displayedColumns: string[] = ['select', 'position', 'name', 'size', 'amount', 'cost'];
  data = Object.assign( ELEMENT_DATA);
  dataSource: MatTableDataSource<Items> = new MatTableDataSource<Items>(this.data);
  selection: SelectionModel<Items> = new SelectionModel<Items>(true, []);




  /** Whether the number of selected elements matches the total number of rows. */
  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSource.data.length;
    return numSelected === numRows;
  }

  /** Selects all rows if they are not all selected; otherwise clear selection. */
  masterToggle() {
    this.isAllSelected() ?
      this.selection.clear() :
      this.dataSource.data.forEach(row => this.selection.select(row));
  }

  /** The label for the checkbox on the passed row */
  checkboxLabel(row?: Items): string {
    if (!row) {
      return `${this.isAllSelected() ? 'select' : 'deselect'} all`;
    }
    return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.position + 1}`;
  }

  getTotalCost() {
    return ELEMENT_DATA.map(t => t.cost).reduce((acc, value) => acc + value, 0);
  }
  removeSelectedRows() {
    this.selection.selected.forEach(item => {
      let index: number = this.data.findIndex(d => d === item);
      console.log(this.data.findIndex(d => d === item));
      this.data.splice(index,1)
      this.dataSource = new MatTableDataSource<Items>(this.data);
    });
    this.selection = new SelectionModel<Items>(true, []);
  }

  constructor() {
    console.log(this.data);
  }

  ngOnInit(): void { }

}
