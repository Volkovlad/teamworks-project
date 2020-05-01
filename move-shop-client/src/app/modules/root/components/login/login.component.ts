import { Component, Input, OnInit } from '@angular/core';
import { AuthService, SocialUser } from 'angularx-social-login';
import { FacebookLoginProvider, GoogleLoginProvider } from 'angularx-social-login';
import { User } from '../../services/user';
import { UserService } from '../../services/user.service';

import { AuthenticationService } from '../../../../services/authentication.service';
import { first } from 'rxjs/operators';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  @Input() showMePartially: boolean;
  @Input() loginVar: boolean;
  user: User = new User();
  private loggedIn: boolean;
  public socialUser: any = SocialUser;

  constructor(
    private userService: UserService,
    private socialAuthService: AuthService,
    private authenticationService: AuthenticationService
  ) { }

  showReg = {
    show: false
  };

  ngOnInit(): void {
    this.socialAuthService.authState.subscribe((socialUser) => {
       this.socialUser = socialUser;
       this.loggedIn = (socialUser != null);
     });
  }

  signInWithGoogle(): void {
    this.socialAuthService.signIn(GoogleLoginProvider.PROVIDER_ID);
  }

  signInWithFB(): void {
    this.socialAuthService.signIn(FacebookLoginProvider.PROVIDER_ID).then((userData) => {
      this.socialUser = userData;
    });
  }

  signOut(): void {
    this.socialAuthService.signOut();
  }


  showRegistration() {
    this.showReg.show = !this.showReg.show;
  }
  onLogin() {

    this.authenticationService.login(this.user)
      .pipe(first())
      .subscribe(
        res => {
          console.log(res);
          alert('User ' + this.user.username + ' logged!');
        },
        error => {
          console.log(error);
          alert('Dont search user with ' + this.user.username + ' username or your password is not corect' );
        });
    if (this.authenticationService.currentUserValue == null) {
      this.loginVar = true;
    }
  }
 }
