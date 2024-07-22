package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entity.DonHang;

public interface DonHangDAO extends JpaRepository<DonHang, String>{
	 @Query("SELECT\r\n"
		 		+ "    COUNT(CASE WHEN trangthai = 'Đã hoàn thành' THEN 1 END) AS SoLuongHoanThanh,\r\n"
		 		+ "    COUNT(CASE WHEN trangthai != 'Đã hoàn thành' THEN 1 END) AS SoLuongChuaHoanThanh\r\n"
		 		+ "FROM DonHang")
		    Object[] getOrderStatusSummary();
}
