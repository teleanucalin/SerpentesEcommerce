import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/shared/services/auth.service';


@Component({
  selector: 'app-login-status',
  templateUrl: './login-status.component.html',
  styleUrls: ['./login-status.component.css']
})
export class LoginStatusComponent {

  userFullName: string = '';
  storage: Storage = sessionStorage;

  constructor(public authService: AuthService, public router: Router) {}

  ngOnInit(): void {
    this.getUserDetails();
  }

  getUserDetails() {
    let user = JSON.parse(localStorage.getItem('user')!);
    
    if (this.authService.isLoggedIn) {
      this.userFullName = user.displayName as string;

      // retrieve the user's email
      const theEmail = user.email;

      this.storage.setItem('userEmail', JSON.stringify(theEmail));
    }
  }

  logout() {
    this.authService.SignOut();
  }
}
