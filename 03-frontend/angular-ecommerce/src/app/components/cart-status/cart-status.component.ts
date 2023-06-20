import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { CartService } from 'src/app/services/cart.service';

@Component({
  selector: 'app-cart-status',
  templateUrl: './cart-status.component.html',
  styleUrls: ['./cart-status.component.css']
})
export class CartStatusComponent {

  totalPrice: number = 0.00;
  totalQuantity: number = 0;

  constructor(private cartService: CartService, private router: Router) { }

  ngOnInit(): void {
    this.updateCartStatus();
  }

  goToCart() {
    this.router.navigate(['/cart-details']);
  }

  updateCartStatus() {
    
    this.cartService.totalPrice.subscribe(
      data => this.totalPrice = data
    );
    
    this.cartService.totalQuantity.subscribe(
      data => this.totalQuantity = data
    );

  }
}
