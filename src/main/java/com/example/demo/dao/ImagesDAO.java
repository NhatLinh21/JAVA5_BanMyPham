package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Images;
import com.example.demo.entity.SanPham;

@Repository
public interface ImagesDAO extends JpaRepository<Images, Long> {
	  @Query("SELECT i FROM Images i WHERE i.sanPham.masp = :masp")
	    List<Images> findBySanPhamMasp(@Param("masp") String masp);
}