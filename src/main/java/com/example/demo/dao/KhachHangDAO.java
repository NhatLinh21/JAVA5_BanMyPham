package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.KhachHang;

@Repository
public interface KhachHangDAO extends JpaRepository<KhachHang, Integer>{
	KhachHang findByEmailAndPass(String email, String pass);
	List<KhachHang> findByEmail(String email);



}
