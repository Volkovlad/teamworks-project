import {Component, Input, OnInit, ViewChild} from '@angular/core';
import {ShoppingService} from '../../services/shopping.service';
import {Shoe} from '../../../../models/shoe';
import {PreloaderComponent} from '../../../shared/components/preloader/preloader.component';


@Component({
  selector: 'app-list-of-products',
  templateUrl: './list-of-products.component.html',
  styleUrls: ['./list-of-products.component.scss'],
  providers: [ShoppingService]
})
export class ListOfProductsComponent implements OnInit {
  @ViewChild(PreloaderComponent, { static: true }) preloader: PreloaderComponent;
  @Input() shoes;


  constructor(private shoppingService: ShoppingService) {
  }

  ngOnInit() {
    this.preloader.show();
    this.shoppingService.getData().subscribe(data => {this.shoes = data as Shoe []; this.preloader.hide()});

  }

}
