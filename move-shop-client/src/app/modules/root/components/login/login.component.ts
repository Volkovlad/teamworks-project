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

  //
  // public socialSignIn(socialPlatform : string) {
  //   let socialPlatformProvider;
  //
  //   // tslint:disable-next-line:triple-equals
  //   if (socialPlatform == 'facebook') {
  //     socialPlatformProvider = FacebookLoginProvider.PROVIDER_ID;
  //
  //   } else if (socialPlatform == 'google') {
  //     socialPlatformProvider = GoogleLoginProvider.PROVIDER_ID;
  //   }
  //
  //   this.socialAuthService.signIn(socialPlatformProvider).then(
  //     (userData) => {
  //       console.log(socialPlatform + ' sign in data : ' , userData);
  //       // Now sign-in with userData
  //       // ...
  //
  //     }
  //   );
  // }

  showRegistration() {
    this.showReg.show = !this.showReg.show;
  }
  onLogin() {
    // this.userService.loginUser(this.user).subscribe(
    //   response => {
    //     console.log(response);
    //     alert('User ' + this.user.username + ' logged!');
    //   },
    //   error => {
    //     console.log('error' + error);
    //   }
    // );

    this.authenticationService.login(this.user)
      .pipe(first())
      .subscribe(
        res => {
          console.log(res);
          alert('User ' + this.user.username + ' logged!');
        },
        error => {
          console.log(error);
        });

  }
 }
// export class SocialLoginComponent implements OnInit {
//
//   private socialUser: SocialUser;
//   private loggedIn: boolean;
//
//   constructor(private authService: AuthService) { }
//
//   ngOnInit(): void {
//     this.authService.authState.subscribe((user) => {
//       this.user = user;
//       this.loggedIn = (user != null);
//     });
//   }
//
//   signInWithGoogle(): void {
//     this.authService.signIn(GoogleLoginProvider.PROVIDER_ID);
//     console.log('login Google');
//   }
//
//   signInWithFB(): void {
//     this.authService.signIn(FacebookLoginProvider.PROVIDER_ID);
//     console.log('login Facebook');
//   }
//
//   signOut(): void {
//     this.authService.signOut();
//   }
//
// }
