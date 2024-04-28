package com.LhinShop.controller;

import com.LhinShop.entity.Order;
import com.LhinShop.service.CartService;
import com.LhinShop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    private final CartService cartService;

    public OrderController(CartService cartService) {
        this.cartService = cartService;
    }

    @PostMapping("/checkout")
    public String checkout(
                            @RequestParam("name") String name,
                            @RequestParam("quantity") Integer quantity,
                            @RequestParam("price") Double price,
                            @RequestParam("total") Double total, Model model) {



        if ( name == null || quantity == null || price == null || total == null ) {
            return "redirect:/";
        }

        long micrometer = java.time.Instant.now().toEpochMilli();
        int numInvoice = (int) micrometer;

        Order order = new Order();
        order.setTex(String.valueOf(numInvoice));
        order.setTotalPrice(price);
        order.setTotalPrice(total);

        orderService.save(order);
        cartService.cearItem();

//        List<Product> products = cartService.getProductList();
        Long count = cartService.countCart();
        model.addAttribute("count", count);

        return "redirect:/";
    }
}
