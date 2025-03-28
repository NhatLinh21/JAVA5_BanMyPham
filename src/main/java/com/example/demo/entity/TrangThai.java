package com.example.demo.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity @Table(name = "trang_thai")
public class TrangThai {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String tentt;
	@JsonIgnore
	@OneToMany(mappedBy = "trangThai")
	List<SanPham> sanPham;	
}
