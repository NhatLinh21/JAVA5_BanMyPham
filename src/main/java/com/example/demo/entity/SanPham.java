package com.example.demo.entity;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity @Table(name = "san_pham")
public class SanPham implements Serializable {
	@Id
	String masp;
	String tensp;
	String hinh;
	@ManyToOne
	@JoinColumn(name = "ID")
	TrangThai trangThai;
	String mota;
	@OneToMany(mappedBy = "sanPham", cascade = CascadeType.REMOVE)
	List<CTDonHang> ctdonhang;	
	@OneToMany(mappedBy= "sanPham",  cascade = CascadeType.REMOVE)
	List<Size> size;
	@OneToMany(mappedBy= "sanPham")
	List<Images> img;
	@Override
    public String toString() {
        return "SanPham{" +
                "masp='" + masp + '\'' +
                ", tensp='" + tensp + '\'' +
                ", hinh='" + hinh + '\'' +
                ", trangThai=" + (trangThai != null ? trangThai.getId() : null) +
                ", mota='" + mota + '\'' +
                '}';
    }
	

}
