import {Component, Input, OnInit} from '@angular/core';
import {Favorite} from '../../services/cart';
import {CartService} from '../../services/cart.service';

@Component({
  selector: 'app-favorite',
  templateUrl: './favorite.component.html',
  styleUrls: ['./favorite.component.scss']
})
export class FavoriteComponent implements OnInit {
  @Input() showFavorite: boolean;
  favorite: Favorite[] = [];
  constructor(private favoriteServices: CartService) { }

  ngOnInit(): void {
    this.favoriteServices.getFavorite().subscribe(data => this.favorite = data['value']);
  }
  remove(shoe_id): void {
    this.favoriteServices.removeFavorite(shoe_id).subscribe();
    this.favoriteServices.getFavorite().subscribe(data => this.favorite = data['value']);
  }

}
