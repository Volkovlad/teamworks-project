import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';
import { AuthService, SocialUser } from 'angularx-social-login';
import { FacebookLoginProvider, GoogleLoginProvider } from 'angularx-social-login';
import { User } from '../../../../models/user';
import { UserService } from '../../services/user.service';
import { Router } from '@angular/router';
import { AuthenticationService } from '../../../../services/authentication.service';
import { first } from 'rxjs/operators';
import {ToastrService} from 'ngx-toastr';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  @Input() showMePartially: boolean;
  @Input() loginVar: boolean;
  @Output() ChangeloginVar = new EventEmitter<boolean>();
  @Output() changeShowVar: EventEmitter<boolean> = new EventEmitter<boolean>();


  user: User = new User();
  private loggedIn: boolean;
  public socialUser: any = SocialUser;

  constructor(
    private userService: UserService,
    private socialAuthService: AuthService,
    private authenticationService: AuthenticationService,
    public router: Router,
    private toastrService: ToastrService
  ) { }

  showReg = {
    show: false
  };

  ngOnInit(): void {
  }
  closeShow() {
    this.showMePartially = !this.showMePartially;
    this.changeShowVar.emit(this.showMePartially);
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
          this.toastrService.success('User ' + this.user.username + ' logged!', '', {
            timeOut: 2500,
            positionClass: 'toast-top-full-width',
          });
          this.showMePartially = !this.showMePartially;
          this.changeShowVar.emit(this.showMePartially);
          this.loginVar = !this.loginVar;
          this.ChangeloginVar.emit(!this.loginVar);
          // location.replace('/home');
        },
        error => {
          this.toastrService.error('Try again, username or your password is not corect' , '', {
            timeOut: 2500,
            positionClass: 'toast-top-full-width',
          });
        });
  }

 }
