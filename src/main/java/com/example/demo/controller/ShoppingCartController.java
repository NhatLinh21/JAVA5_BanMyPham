package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dto.CartItem;
import com.example.demo.entity.KhachHang;
import com.example.demo.service.CookieService;
import com.example.demo.service.ShoppingCartService;
import com.fasterxml.jackson.core.JsonProcessingException;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@Controller
public class ShoppingCartController {

	@Autowired
	ShoppingCartService cart;
	
	@Autowired
	CookieService cookie;

	 @Autowired
	 HttpServletResponse response;
	 
	 
	@RequestMapping("/cart/view")
	public String view(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("Count", cart.getCount());
		model.addAttribute("Amount", cart.getAmount());
		System.out.println("Cart Items: " + cart.getItems());

		return "cart";
	}

	@RequestMapping("/addToCart")
	public String addToCart(@RequestParam("id") String id) {
	    cart.add(id);
	    return "redirect:/cart/view"; // hiển thị giỏ hàng
	}

	

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") String id) {
		cart.add(id);
		return "redirect:/cart/view"; // hiển thị giỏ hàng
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") String id) {
		cart.remove(id);
		return "redirect:/cart/view";
	}

	@RequestMapping("/cart/update/{id}/{pre}")
	public String update(@PathVariable("id") String masp, @PathVariable("pre") String pre) {
	    int quantityChange;
	    if ("plus".equals(pre)) {
	        quantityChange = 1;
	    } else if ("minus".equals(pre)) {
	        quantityChange = -1;
	    } else {
	        try {
	            quantityChange = Integer.parseInt(pre);
	        } catch (NumberFormatException e) {
	            throw new IllegalArgumentException("Invalid quantity: " + pre);
	        }
	    }

	    cart.update(masp, quantityChange);
	    return "redirect:/cart/view";
	}


	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/cart/view";
	}

	@GetMapping("/checkout")
    public String checkout(HttpSession session, Model model) {
		 //session.setAttribute("checkoutRedirect", true);
		 
        Object currentUser = session.getAttribute("currentUser");
        if (currentUser == null) {
            // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
            return "redirect:/dangnhap";
        }

        if (currentUser instanceof KhachHang) {
          
            model.addAttribute("user", currentUser);
            return "checkout";
        }

      
        return "redirect:/account";
    }
	



}
