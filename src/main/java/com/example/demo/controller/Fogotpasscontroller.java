package com.example.demo.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.KhachHang;
import com.example.demo.entity.NhanVien;
import com.example.demo.service.Emailservice;

import jakarta.validation.Valid;

@Controller
public class Fogotpasscontroller {
	 @Autowired
	 Emailservice emailService;

	 @GetMapping("/forgotpass")
	    public String signin(Model model) {
	    	KhachHang kh = new KhachHang();
	    	model.addAttribute("kh", kh);
	        return "forgotpass";
	    }
	 @PostMapping("/forgotpass")
	    public String processForgotPasswordForm(
	            @Valid @ModelAttribute("kh") KhachHang khachhang,
	            BindingResult bindingResult,
	            Model model) {
	        if (bindingResult.hasErrors()) {
	            return "fogotpass";
	        }
	        
	        String newpassword = generateRandomPassword();
	        
	        String email = khachhang.getEmail(); // Retrieve the email
	        String subject = "Mật Khẩu Mới"; // Define the email subject
	        String body = "Mật khẩu Mới Của Bạn là: " + newpassword; // Construct the email body
	        
	        emailService.sendNewPassword(email,subject,body);
	        

	        return "forgotpass";    }
	 
	 private String generateRandomPassword() {
	        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	        StringBuilder newPassword = new StringBuilder();
	        Random random = new Random();
	        for (int i = 0; i < 8; i++) {
	            newPassword.append(characters.charAt(random.nextInt(characters.length())));
	        }
	        return newPassword.toString();
	    }
}
