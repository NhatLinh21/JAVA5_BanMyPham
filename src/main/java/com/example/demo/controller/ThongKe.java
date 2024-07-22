package com.example.demo.controller;

import com.example.demo.dao.CTDonHangDAO;
import com.example.demo.dao.DonHangDAO;
import com.example.demo.dao.SanPhamDAO;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ThongKe {

    @Autowired
    private CTDonHangDAO ctDonHangDAO;

    @Autowired
    private DonHangDAO donHangDAO;

    @Autowired
    private SanPhamDAO sanPhamDAO;

    @RequestMapping("/report")
    public String inventory(Model model) {
        Double totalRevenue = ctDonHangDAO.getTotalRevenue();
        System.out.println("sss" + ctDonHangDAO.getTotalRevenue()); // Kiểm tra giá trị trong console
        Integer totalProducts = sanPhamDAO.getTotalProducts();
        model.addAttribute("totalProducts", totalProducts);
        model.addAttribute("totalRevenue", totalRevenue);

        Object[] orderStatusSummary = donHangDAO.getOrderStatusSummary();
        System.out.println("Order Status Summary: " + Arrays.toString(orderStatusSummary));

        Object[] statusCounts = (Object[]) orderStatusSummary[0];
        Long completedOrders = ((Number) statusCounts[1]).longValue();
        Long pendingOrders = ((Number) statusCounts[0]).longValue();
        Long totalOrders = completedOrders + pendingOrders;

        double completedPercentage = totalOrders > 0 ? (double) completedOrders / totalOrders * 100 : 0;
        double pendingPercentage = totalOrders > 0 ? (double) pendingOrders / totalOrders * 100 : 0;

        model.addAttribute("completedPercentage", completedPercentage);
        model.addAttribute("pendingPercentage", pendingPercentage);

        return "/admin/thongke";
    }
}
