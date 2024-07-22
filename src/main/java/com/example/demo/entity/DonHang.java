package com.example.demo.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "don_hang")
public class DonHang implements Serializable {
	@Id
	String madh;
	@ManyToOne
	@JoinColumn(name = "maKH")
	KhachHang khachhang;
	@ManyToOne
	@JoinColumn(name = "MaNV")
	NhanVien nhanVien;
	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_dat")
	Date ngaydat = new Date();
	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_giao_dk")
	Date ngaygiaodk = new Date();
	String diachi;
	String trangthai;
	@JsonIgnore
	@OneToMany(mappedBy = "donHang")
	List<CTDonHang> ctdh;
}
