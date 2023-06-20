package com.serpentes.ecommerce.service;

import com.serpentes.ecommerce.dto.PaymentInfo;
import com.serpentes.ecommerce.dto.Purchase;
import com.serpentes.ecommerce.dto.PurchaseResponse;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);

    PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException;
}
