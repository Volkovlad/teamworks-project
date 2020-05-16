import { Component, Input, OnInit } from '@angular/core';

import {User} from '../../../../models/user';
import {UserService} from '../../services/user.service';
import {LoginComponent} from '../login/login.component';
import {ToastrService} from "ngx-toastr";

@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.scss']
})
export class RegistrationComponent implements OnInit {

  user: User = new User();
  submitted = false;

  constructor(private userService: UserService, private toastrService: ToastrService) { }

  @Input() showMe;
  ngOnInit(): void {
  }
  save() {
    this.userService.createUser(this.user)
      .subscribe(
        data => {
          this.toastrService.success('User has success registration' , '', {
            timeOut: 2500,
            positionClass: 'toast-top-full-width',
          });
          console.log(data);
          this.submitted = true;
        },
        error => {
          this.toastrService.error('Fill all fields and try again ' , '', {
            timeOut: 2500,
            positionClass: 'toast-top-full-width',
          });
          console.log(error);
        }),
      this.user = new User();
  }
  onSubmit() {
    this.save();
  }

  closeRegistration() {
    this.showMe.show = !this.showMe.show;
  }
}
