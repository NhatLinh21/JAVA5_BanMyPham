package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.NhanVien;

@Repository
public interface NhanVienDAO extends JpaRepository<NhanVien, String> {
	 NhanVien findByEmailAndPass(String email,String pass);
}
