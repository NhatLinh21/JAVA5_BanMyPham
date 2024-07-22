package com.example.demo.controller;

import java.util.Collections;
import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.DonHangDAO;
import com.example.demo.dao.ImagesDAO;
import com.example.demo.dao.SanPhamDAO;
import com.example.demo.dao.SizeDAO;
import com.example.demo.dto.CartItem;
import com.example.demo.entity.CTDonHang;
import com.example.demo.entity.DonHang;
import com.example.demo.entity.Images;
import com.example.demo.entity.SanPham;
import com.example.demo.entity.Size;
import com.example.demo.service.SessionService;
import com.example.demo.service.ShoppingCartService;


import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/shop")
public class DetailController {
    @Autowired
    private SanPhamDAO sanPhamDAO;

    @Autowired
    private SizeDAO sizeDAO;

    @Autowired
    private ImagesDAO imagesDAO;

    @Autowired
    private ShoppingCartService cart;

    @Autowired
    private SessionService sessionService;

	private SanPham sanpham;

	@RequestMapping("/detail/{masp}")
	public String index(@PathVariable("masp") String masp, Model model) {
	    Optional<SanPham> sanphamOpt = sanPhamDAO.findById(masp);
	    if (!sanphamOpt.isPresent()) {
	        model.addAttribute("error", "Sản phẩm không tồn tại");
	        return "error"; // Redirect to an error page
	    }

	    SanPham sanpham = sanphamOpt.get();
	    List<Size> sizes = sizeDAO.findBySanPham(sanpham);
	    List<Images> images = imagesDAO.findBySanPhamMasp(masp);
	    model.addAttribute("product", sanpham);
	    model.addAttribute("sizes", sizes);
	    model.addAttribute("images", images); // Thêm danh sách ảnh vào model

	    // Print out for checking
	    System.out.println("Product: " + sanpham);
	    System.out.println("Sizes: " + sizes);
	    System.out.println("Images: " + images);

	    return "detail";
	}

}
