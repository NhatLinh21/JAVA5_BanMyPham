package com.example.demo.service;

import java.io.IOException;
import java.util.Collection;

import com.example.demo.dto.CartItem;
import com.fasterxml.jackson.core.JsonProcessingException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface ShoppingCartService {
	/**
	* Thêm mặt hàng vào giỏ hoặc tăng số lượng lên 1 nếu đã tồn tại
	* @param id là mã mặt hàng cần thêm
	* @return mặt hàng đã được thêm vào hoặc cập nhật số lượng
	*/
	CartItem add(String id);
	/**
	* Xóa mặt hàng khỏi giỏ
	* @param id mã mặt hàng cần xóa
	*/
	void remove(String id);
	/**
	* Thay đổi số lượng lên của mặt hàng trong giỏ
	* @param id mã mặt hàng
	* @param pre số lượng mới
	* @return mặt hàng đã được thay đổi số lượng
	*/
	CartItem update(String id, String pre);
	/**
	* Xóa sạch các mặt hàng trong giỏ
	*/
	void clear();
	/**
	* Lấy tất cả các mặt hàng trong giỏ
	*/
	Collection<CartItem> getItems();
	/**
	* Lấy tổng số lượng các mặt hàng trong giỏ
	*/
	int getCount();
	/**
	* Lấy tổng số tiền tất cả các mặt hàng trong giỏ
	*/
	double getAmount();
	CartItem update(String id, int qty);
	void add(String masp, CartItem item);

	
}
