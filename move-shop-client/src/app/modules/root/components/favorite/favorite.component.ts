import {Component, Input, OnInit} from '@angular/core';
import {Favorite} from '../../services/cart';
import {CartService} from '../../services/cart.service';
import {ifTrue} from "codelyzer/util/function";
import {AuthenticationService} from "../../../../services/authentication.service";

function sleep(milliseconds) {
  const date = Date.now();
  let currentDate = null;
  do {
    currentDate = Date.now();
  } while (currentDate - date < milliseconds);
}

@Component({
  selector: 'app-favorite',
  templateUrl: './favorite.component.html',
  styleUrls: ['./favorite.component.scss']
})
export class FavoriteComponent implements OnInit {
  @Input() showFavorite: boolean;
  @Input() loginVar: boolean;
  favorite: Favorite[] = [];
  constructor(private favoriteServices: CartService,  private authenticationService: AuthenticationService) { }

  ngOnInit(): void {
    if (this.authenticationService.currentUserValue != null) {
      this.favoriteServices.getFavorite().subscribe(data => this.favorite = data['value']);
    }

  }
  remove(shoe_id): void {
    this.favoriteServices.removeFavorite(shoe_id).subscribe();
    sleep(50);
    this.favoriteServices.getFavorite().subscribe(data => this.favorite = data['value']);
  }
  view(): void {
    this.favoriteServices.getFavorite().subscribe(data => this.favorite = data['value']);
  }

}
