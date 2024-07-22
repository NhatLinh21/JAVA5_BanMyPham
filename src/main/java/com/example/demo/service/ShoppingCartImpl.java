package com.example.demo.service;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.example.demo.dao.SanPhamDAO;
import com.example.demo.dto.CartItem;
import com.example.demo.entity.SanPham;
import com.example.demo.entity.Size;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;



@SessionScope
@Service
public class ShoppingCartImpl implements ShoppingCartService {
	 private final Map<String, CartItem> map = new HashMap<>();
	
    @Autowired
    private SanPhamDAO dao;
    @Autowired
    private CookieService cookieService;
    public Map<String, CartItem> getMap() {
        return map;
    }

    @Override
    public CartItem add(String id) {
        CartItem item = map.get(id);
        if (item == null) { // Chưa có trong giỏ hàng
            Optional<SanPham> optionalsp = dao.findById(id); // Lấy thông tin sản phẩm từ cơ sở dữ liệu
            if (optionalsp.isPresent()) {
                SanPham sp = optionalsp.get();
                item = new CartItem();
                item.setSpham(sp); // Gán thông tin sản phẩm vào 
                Size size = sp.getSize().iterator().next(); // For simplicity, selecting the first size
                item.setSize(size);
                item.setGia(size.getGia());
                item.setQty(1); // Gán số lượng là 1
                item.setTotal(item.getQty() * item.getSize().getGia()); // Gán thành tiền ban đầu là giá của sản phẩm
                map.put(id, item);
                System.out.println("Sản phẩm được thêm vào giỏ hàng:");
                System.out.println("Mã sản phẩm: " + sp.getMasp());
                System.out.println("Tên sản phẩm: " + sp.getTensp());
                System.out.println("Size: " + size.getKichthuoc() + " " + size.getDonvitinh());
                System.out.println("Giá: " + size.getGia());
                System.out.println("Số lượng: " + item.getQty());
                System.out.println("Thành tiền: " + item.getTotal());
            } else {
                throw new RuntimeException("Product not found");
            }
        } else {
            item.setQty(item.getQty() + 1);
            item.setTotal(item.getQty() * item.getSize().getGia()); // Cập nhật thành tiền

            // In ra thông tin sản phẩm được cập nhật
            System.out.println("Sản phẩm đã tồn tại trong giỏ hàng, cập nhật số lượng:");
            System.out.println("Mã sản phẩm: " + item.getSpham().getMasp());
            System.out.println("Tên sản phẩm: " + item.getSpham().getTensp());
            System.out.println("Size: " + item.getSize().getKichthuoc() + " " + item.getSize().getDonvitinh());
            System.out.println("Giá: " + item.getSize().getGia());
            System.out.println("Số lượng: " + item.getQty());
            System.out.println("Thành tiền: " + item.getTotal());
        }
        
        return item;
    }

	@Override
	public void remove(String id) {
		// TODO Auto-generated method stub
		map.remove(id);
	}

	public CartItem update(String id, int qty) {
	    CartItem item = map.get(id);
	    if (item == null) {
	        throw new IllegalArgumentException("Item not found in cart");
	    }

	    if (qty == -1 && item.getQty() > 0) {
	        item.setQty(item.getQty() - 1);
	        if (item.getQty() == 0) {
	            this.remove(id);
	        }
	    } else if (qty == 1 && item.getQty() < 100) {
	        item.setQty(item.getQty() + 1);
	    }

	    item.setTotal(item.getQty() * item.getSize().getGia());
	    return item;
	}


	@Override
	public void clear() {
		// xoa het gio hang
				map.clear();
	}

	@Override
	public Collection<CartItem> getItems() {
		return map.values();
	}

	@Override
	public int getCount() {
		return map.values().stream().mapToInt(item -> item.getQty()).sum();
	}

	@Override
	public double getAmount() {
	    return map.values().stream()
	        .mapToDouble(item -> item.getSize().getGia() * item.getQty())
	        .sum();
	}

	@Override
	public CartItem update(String id, String pre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(String masp, CartItem item) {
		 map.put(masp, item);
		
	}

}
