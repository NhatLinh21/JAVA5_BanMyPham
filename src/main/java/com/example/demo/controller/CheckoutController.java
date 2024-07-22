package com.example.demo.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dto.CartItem;
import com.example.demo.service.ShoppingCartService;

@Controller
public class CheckoutController {
	@Autowired
    private ShoppingCartService shoppingCartService;
	
	
	@RequestMapping("/sanpham/checkout")
	public String checkout(Model model) {
	    Collection<CartItem> cartItems = shoppingCartService.getItems();
	    
	    // Calculate the total amount
	    double totalAmount = shoppingCartService.getAmount() + 35000;
	    
	    // Add total amount and cart items to the model
	    model.addAttribute("totalAmount", totalAmount);
	    model.addAttribute("cartItems", cartItems);
	    
	    System.out.println("danh sach san pham:" + cartItems);
	    System.out.println("san pham:" + totalAmount);

	    return "checkout"; // Return the view template name
	}
}
