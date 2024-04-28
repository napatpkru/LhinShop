package com.LhinShop.controller;

import com.LhinShop.entity.Order;
import com.LhinShop.service.CartService;
import com.LhinShop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/report")
public class ReportController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private CartService cartService;

   @GetMapping
    public String report(Model model) {
       List<Order> orders = orderService.findAll();
       model.addAttribute("orders", orders);

       Long count = cartService.countCart();
       model.addAttribute("count", count);

       return "report";
   }
}
