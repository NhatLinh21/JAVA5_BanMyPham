package com.example.demo.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "ct_donhang")
public class CTDonHang implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer CTDH;
	@ManyToOne
	@JoinColumn(name = "MaDH")
	DonHang donHang;
	@ManyToOne
	@JoinColumn(name = "MaSP")
	SanPham sanPham;
	Integer soluong;
	Double dongia;
	@OneToMany(mappedBy="ctdh")
	List<DanhGia> danhGia;

}
