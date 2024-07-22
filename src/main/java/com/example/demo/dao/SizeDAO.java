package com.example.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.SanPham;
import com.example.demo.entity.Size;
@Repository
public interface SizeDAO extends JpaRepository<Size, Long>{

    List<Size> findBySanPham(SanPham sanPham);

    Optional<Size> findById(Long id);
    Optional<Size> findById(Integer id);

	List<Size> findBySanPhamMasp(String masp);

}
