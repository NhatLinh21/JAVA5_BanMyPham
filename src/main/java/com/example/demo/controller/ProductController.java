package com.example.demo.controller;

import java.util.List;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Optional;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dao.DonHangDAO;
import com.example.demo.dao.ImagesDAO;
import com.example.demo.dao.SanPhamDAO;
import com.example.demo.dao.SizeDAO;
import com.example.demo.dao.TrangThaiDAO;
import com.example.demo.entity.DonHang;
import com.example.demo.entity.Images;
import com.example.demo.entity.SanPham;
import com.example.demo.entity.Size;
import com.example.demo.entity.TrangThai;
import com.example.demo.service.SessionService;

import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ProductController {
	@Autowired
	SanPhamDAO daosp;
	ImagesDAO daoimg;
	SizeDAO daosize;
	TrangThaiDAO daott;

	@Autowired
	SessionService session;
	@Autowired
    private SanPhamDAO sanPhamDAO;

    @Autowired
    private DonHangDAO donHangDAO;

    @Autowired
    private TrangThaiDAO trangThaiDAO;

    @Autowired
    private SizeDAO sizeDAO;

	@GetMapping("/listpage")
	public String paginate(Model model, @RequestParam("page") Optional<Integer> page,
			@RequestParam("keywords") Optional<String> kw) {
		String kwords = kw.orElse(session.get("keywords", ""));
//		System.out.println("Keywords: " + kwords); // Debug
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(page.orElse(0), 11);
		Page<SanPham> pages = daosp.findAll(pageable);
		for ( SanPham sp : pages) {
			List<Size> sizes = sp.getSize();
			if (sizes != null) {
				for (Size size : sizes) {}
			}
			TrangThai trangThai = sp.getTrangThai();
			if (trangThai != null) {}
			List<Images> img = sp.getImg();
			if (img != null) {
				for (Images images : img) {}
			}
		}
		
		Page<SanPham> pages1 = daosp.findAllBytenspLike("%" + kwords + "%", pageable); // lab6.3
		model.addAttribute("page", pages1);
		return "list";
	}
	@RequestMapping("/blog")
	public String blog() {
		return "blog";
	}
    
    @GetMapping("/qlsanpham")
    public String index(Model model, @ModelAttribute("sanphamid") SanPham sp) {
        SanPham sPham = new SanPham();
        model.addAttribute("sPham", sPham);
        List<SanPham> spList = sanPhamDAO.findAll();
        model.addAttribute("spList", spList);
        return "/admin/qlsanpham";
    }

    @GetMapping("/chinhsuasp")
    public String cs(Model model) {
        SanPham item = new SanPham();
        model.addAttribute("item", item);

        List<TrangThai> ttList = trangThaiDAO.findAll();
        model.addAttribute("trangThaiList", ttList);

        return "/admin/chinhsuasp";
    }

    @GetMapping("/thongke")
    public String tk() {
        return "/admin/thongke";
    }

    @GetMapping("/qldonhang")
    public String donhang(Model model) {
        DonHang item = new DonHang();
        model.addAttribute("item", item);
        List<DonHang> items = donHangDAO.findAll();
        model.addAttribute("items", items);
        return "/admin/qldonhang";
    }

    @GetMapping("/product/edit/{masp}")
    public String edit(Model model, @PathVariable("masp") String masp) {
        SanPham item = sanPhamDAO.findById(masp).orElse(null);
        model.addAttribute("item", item);

        List<TrangThai> trangThaiList = trangThaiDAO.findAll();
        model.addAttribute("trangThaiList", trangThaiList);

        List<Size> sizeList = sizeDAO.findBySanPhamMasp(masp);
        model.addAttribute("sizeList", sizeList);

        return "admin/chinhsuasp";
    }
    @PostMapping("/create")
    public String createProduct(@ModelAttribute("item") SanPham item, @RequestParam("files") MultipartFile[] files) {
        // Process and add images
        processFiles(item, files);

        // Ensure sizes are properly set
        if (item.getSize() != null) {
            for (Size size : item.getSize()) {
                size.setSanPham(item);
            }
        }

        sanPhamDAO.save(item);
        
        // In ra thông tin vừa được thêm vào
        System.out.println("Thông tin sản phẩm mới:");
        System.out.println("Mã sản phẩm: " + item.getMasp());
        System.out.println("Tên sản phẩm: " + item.getTensp());
        System.out.println("Tên sản phẩm: " + item.getSize());

        // In ra các thông tin khác cần thiết của sản phẩm
        return "redirect:/qlsanpham";
    }



    @PostMapping("/update")
    public String updateProduct(@ModelAttribute("item") SanPham item, @RequestParam("files") MultipartFile[] files) {
        SanPham existingProduct = sanPhamDAO.findById(item.getMasp()).orElse(null);

        if (existingProduct != null) {
            existingProduct.setTensp(item.getTensp());
            existingProduct.setMota(item.getMota());

            // Set the updated status
            TrangThai trangThai = trangThaiDAO.findById(item.getTrangThai().getId()).orElse(null);
            existingProduct.setTrangThai(trangThai);

            existingProduct.setSize(item.getSize());

            // Clear the old images
            existingProduct.getImg().clear();

            // Process and add new images
            processFiles(existingProduct, files);

            sanPhamDAO.save(existingProduct);
        }

        return "redirect:/qlsanpham";
    }

    private void processFiles(SanPham item, MultipartFile[] files) {
        String uploadDirectory = "C:/upload/images/";
        List<Images> images = new ArrayList<>();

        for (MultipartFile file : files) {
            if (!file.isEmpty()) {
                Images image = new Images();
                String fileName = file.getOriginalFilename();
                String filePath = uploadDirectory + fileName;
                try {
                    // Tạo thư mục nếu chưa tồn tại
                    File directory = new File(uploadDirectory);
                    if (!directory.exists()) {
                        directory.mkdirs();
                    }

                    // Lưu tệp vào thư mục
                    File dest = new File(filePath);
                    file.transferTo(dest);

                    // Set đường dẫn vào thuộc tính của Images
                    image.setUrl(filePath);
                    image.setSanPham(item); // Liên kết ảnh với sản phẩm
                    images.add(image);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        item.setImg(images);
    }

    @PostMapping("/product/delete/{masp}")
    public String delete(@PathVariable("masp") String masp) {
        sanPhamDAO.deleteById(masp);
        return "redirect:/qlsanpham";
    }

    @GetMapping("/export/excel")
    public void exportToExcel(HttpServletResponse response) throws IOException {
        List<SanPham> products = sanPhamDAO.findAll();

        XSSFWorkbook workbook = new XSSFWorkbook();
        XSSFSheet sheet = workbook.createSheet("Sản Phẩm");

        // Tạo tiêu đề cho các cột
        Row headerRow = sheet.createRow(0);
        XSSFCellStyle headerCellStyle = workbook.createCellStyle();
        headerCellStyle.setFillForegroundColor(IndexedColors.AQUA.getIndex());
        headerCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);

        String[] columnHeaders = {"Mã SP", "Tên SP", "Mô Tả", "Trạng Thái"};
        for (int i = 0; i < columnHeaders.length; i++) {
            Cell cell = headerRow.createCell(i);
            cell.setCellValue(columnHeaders[i]);
            cell.setCellStyle(headerCellStyle);
        }

        // Điền dữ liệu vào các hàng
        int rowNum = 1;
        for (SanPham product : products) {
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(product.getMasp());
            row.createCell(1).setCellValue(product.getTensp());
            row.createCell(2).setCellValue(product.getMota());
            row.createCell(3).setCellValue(product.getTrangThai().getTentt());
        }

        // Thiết lập response
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setHeader("Content-Disposition", "attachment; filename=sanpham.xlsx");
        ServletOutputStream outputStream = response.getOutputStream();
        workbook.write(outputStream);
        workbook.close();
        outputStream.close();
    }

}
