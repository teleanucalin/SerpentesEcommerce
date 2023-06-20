package com.serpentes.ecommerce.dto;

import com.serpentes.ecommerce.entity.Address;
import com.serpentes.ecommerce.entity.Customer;
import com.serpentes.ecommerce.entity.Order;
import com.serpentes.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}
