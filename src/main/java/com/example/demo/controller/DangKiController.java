package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.KhachHangDAO;
import com.example.demo.entity.KhachHang;
@Controller 
public class DangKiController {
	
@Autowired
    KhachHangDAO khachhangdao;	
	
@GetMapping("/dangki")
public String dangki(Model model) {
	KhachHang khachhang = new KhachHang();
	model.addAttribute("khachhang",khachhang);
	
	return"signup";
}	
@PostMapping("/dangki")
public String register(@RequestParam String tenkh, @RequestParam String email, 
                       @RequestParam String sdt, @RequestParam String pass, Model model) {
    KhachHang khachHang = new KhachHang();
    khachHang.setTenKH(tenkh);
    khachHang.setEmail(email);
    khachHang.setSdt(sdt);
    khachHang.setPass(pass);

    khachhangdao.save(khachHang);
    return "redirect:/dangnhap";
}

}
