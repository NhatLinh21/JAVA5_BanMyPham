package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.ImagesDAO;
import com.example.demo.dao.SanPhamDAO;
import com.example.demo.dao.SizeDAO;
import com.example.demo.dao.TrangThaiDAO;
import com.example.demo.entity.SanPham;
import com.example.demo.service.SessionService;


@Controller
public class HomeController {
	@Autowired
	SanPhamDAO daosp;
	ImagesDAO daoimg;
	SizeDAO daosize;
	TrangThaiDAO daott;

	@Autowired
	SessionService session;
	@RequestMapping("/")
	public String index(Model model, @RequestParam("page") Optional<Integer> page,
			@RequestParam("keywords") Optional<String> kw) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		int currentPage = page.orElse(0);
		Pageable pageable = PageRequest.of(currentPage, 8);
		Page<SanPham> pages = daosp.findAll(pageable);

		// Ensure the current page is within the valid range
		if (currentPage >= pages.getTotalPages() && pages.getTotalPages() > 0) {
			currentPage = pages.getTotalPages() - 1;
			pageable = PageRequest.of(currentPage, 4);
			pages = daosp.findAll(pageable);
		} else if (currentPage < 0) {
			currentPage = 0;
			pageable = PageRequest.of(currentPage, 4);
			pages = daosp.findAll(pageable);
		}

		Page<SanPham> pages1 = daosp.findAllBytenspLike("%" + kwords + "%", pageable); // lab6.3
		model.addAttribute("page", pages1);
		return "index";
	}
}
