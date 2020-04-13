import { Component, OnInit } from '@angular/core';

import {User} from './services/user';
import {UserService} from './services/user.service';

@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.scss']
})
export class RegistrationComponent implements OnInit {

  user: User = new User();
  submitted = false;

  constructor(private userService: UserService) { }

  ngOnInit(): void {
  }

  newUser(): void{
    this.submitted = false;
    this.user = new User();
  }

  save(){
    this.userService.createUser(this.user)
      .subscribe(
        data => {
          console.log(data);
          this.submitted = true;
        },
        error => console.log(error)),
      this.user = new User();
  }
  onSubmit(){
    this.save()
  }
}
