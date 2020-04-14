import {Component, Input, OnInit} from '@angular/core';
import {AuthService, SocialUser} from 'angularx-social-login';
import { FacebookLoginProvider, GoogleLoginProvider } from 'angularx-social-login';

import {User} from '../../services/user';
import {UserService} from '../../services/user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  user: User = new User();
  // private user: SocialUser;
  private loggedIn: boolean;
  @Input() showMePartially: boolean;

  constructor(private userService: UserService) { }

  showReg = {
    show: false
  };
  ngOnInit(): void {
    /* this.authService.authState.subscribe((user) => {
       this.user = user;
       this.loggedIn = (user != null);
     });*/
  }

  signInWithGoogle(): void {
    /*this.authService.signIn(GoogleLoginProvider.PROVIDER_ID);*/
    console.log('login Google');
  }

  signInWithFB(): void {
    /*this.authService.signIn(FacebookLoginProvider.PROVIDER_ID);*/
    console.log('login Facebook');
  }

  // signOut(): void {
  //   this.authService.signOut();
  // }

  showRegistration(){
    this.showReg.show = !this.showReg.show;
  }
  onLogin(){
    this.userService.loginUser(this.user).subscribe(
      response => {
        console.log(response);
        alert('User ' + this.user.username + ' logged!');
      },
      error => {
        console.log('error' + error);
      }
    );

  }
}
