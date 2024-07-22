package com.example.demo.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.SanPham;
@Repository

public interface SanPhamDAO extends JpaRepository<SanPham, String> {
	  @Query("SELECT s FROM SanPham s")
	    List<SanPham> findAllSanPham();
		Page<SanPham> findAllBytenspLike(String keywords, Pageable pageable);	

	
		@Query("SELECT COUNT(masp) AS TotalProducts FROM SanPham")
		Integer getTotalProducts();
}
