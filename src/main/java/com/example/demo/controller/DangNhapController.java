package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.KhachHangDAO;
import com.example.demo.dao.NhanVienDAO;
import com.example.demo.dto.UserFormBacking;
import com.example.demo.entity.KhachHang;
import com.example.demo.entity.NhanVien;

import jakarta.servlet.http.HttpSession;

@Controller
public class DangNhapController {
	@Autowired
    private NhanVienDAO nhanviendao;
    
    @Autowired
    private KhachHangDAO khachhangdao;


    @GetMapping("/dangnhap")
    public String signin(Model model) {
        // Khởi tạo một đối tượng UserFormBacking để lưu thông tin đăng nhập
        UserFormBacking userFormBacking = new UserFormBacking();
        model.addAttribute("userFormBacking", userFormBacking);
        
        return "signin";
    }

    @PostMapping("/signin")
    public String signintrue(@ModelAttribute("userFormBacking") UserFormBacking userFormBacking, Model model, HttpSession session) {
        // Lấy thông tin từ form
        String email = userFormBacking.getEmail();
        String pass = userFormBacking.getPass();
        
        // Kiểm tra xem thông tin đăng nhập có phù hợp với nhân viên hay không
        NhanVien nhanVien = nhanviendao.findByEmailAndPass(email, pass);
        if (nhanVien != null) {
            session.setAttribute("currentUser", nhanVien);
            session.setAttribute("userType", "employee");
            return "redirect:/qlsanpham";
        }

        // Kiểm tra xem thông tin đăng nhập có phù hợp với khách hàng hay không
        KhachHang khachHang = khachhangdao.findByEmailAndPass(email, pass);
        if (khachHang != null) {
            session.setAttribute("currentUser", khachHang);
            session.setAttribute("userType", "customer");
            return "redirect:/";
        }

        // Nếu không phù hợp với cả nhân viên và khách hàng, trả về trang đăng nhập với thông báo lỗi
        model.addAttribute("error", "Email hoặc mật khẩu sai");
        return "signin";
    }

    @GetMapping("/account")
    public String myaccount(HttpSession session, Model model) {
        Object currentUser = session.getAttribute("currentUser");
        if (currentUser == null) {
            return "redirect:/dangnhap"; // Nếu người dùng chưa đăng nhập, chuyển hướng tới trang đăng nhập
        }
        
        model.addAttribute("user", currentUser);
        return "account"; // Trả về trang thông tin tài khoản
    }

}
