package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entity.CTDonHang;

public interface CTDonHangDAO extends JpaRepository<CTDonHang, Integer>{
	@Query("SELECT SUM(c.soluong * c.dongia) FROM CTDonHang c")
    Double getTotalRevenue();

}
