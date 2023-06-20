import { Component, Inject } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
 
  // oktaSignin: any;
 
  // constructor(@Inject(OKTA_AUTH) private oktaAuthService: OktaAuth) {
  //   this.oktaSignin = new OktaSignIn({
  //     logo: 'assets/images/logo.png',
  //     baseUrl: myAppConfig.oidc.issuer.split('/oauth2')[0],
  //     clientId: myAppConfig.oidc.clientId,
  //     redirectUri: myAppConfig.oidc.redirectUri,
  //     authParams: {
  //       pkce: true,
  //       issuer: myAppConfig.oidc.issuer,
  //       scopes: myAppConfig.oidc.scopes
  //     },
  //     features: { registration:true }
  //   });
 
  // }
 
  // ngOnInit(): void {
  //   this.oktaSignin.remove();
 
  //   this.oktaSignin.renderEl({
  //     el: '#okta-sign-in-widget'},
  //     (response: { status: string; }) => {
  //       if (response.status === 'SUCCESS') {
  //         this.oktaAuthService.signInWithRedirect();
  //       }
  //     },
  //     (error: any) => {
  //       throw error;
  //     }
  //   );
  // }
 
}