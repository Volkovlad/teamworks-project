import {SelectionModel} from '@angular/cdk/collections';
import { Component, OnInit,  ViewChild} from '@angular/core';
import {MatPaginator} from '@angular/material/paginator';
import {MatTableDataSource} from '@angular/material/table';


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
  displayedColumns: string[] = ['name', 'size', 'amount', 'cost'];
  dataSource = new MatTableDataSource(ELEMENT_DATA);

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

}


/*export interface Items {
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





  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSource.data.length;
    return numSelected === numRows;
  }

  masterToggle() {
    this.isAllSelected() ?
      this.selection.clear() :
      this.dataSource.data.forEach(row => this.selection.select(row));
  }


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


  }*/


