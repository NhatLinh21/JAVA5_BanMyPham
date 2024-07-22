package com.example.demo.dto;

import com.example.demo.entity.KhachHang;
import com.example.demo.entity.NhanVien;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserFormBacking {
    String email;
    String pass;

    // Constructor accepting NhanVien and KhachHang parameters
    public UserFormBacking(NhanVien nv, KhachHang kh) {
        // Assign values from NhanVien and KhachHang to email and pass fields
        this.email = nv.getEmail();
        this.pass = nv.getPass();
        this.email = kh.getEmail();
        this.pass = kh.getPass(); // Assuming NhanVien and KhachHang classes have appropriate getter methods
    }
}
