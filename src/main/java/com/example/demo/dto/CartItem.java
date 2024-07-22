package com.example.demo.dto;

import java.util.List;
import java.util.Optional;

import com.example.demo.entity.Images;
import com.example.demo.entity.SanPham;
import com.example.demo.entity.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
	private SanPham spham;
	private Integer qty;
	private double total;
	private Size size;
	public void setGia(Double gia) {
		// TODO Auto-generated method stub
		
	}
	public void setImg(List<Images> images) {
		// TODO Auto-generated method stub
		
	}
	
}
