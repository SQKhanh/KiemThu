package com.shopeeClone.shopeeClone.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.shopeeClone.shopeeClone.dto.ProductDTO;
import com.shopeeClone.shopeeClone.service.ProductService;

@Controller
public class UserController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public String home(Model model) {
        List<ProductDTO> productDTOs = productService.getProducts();
        model.addAttribute("products", productDTOs);
        return "user/homePage";
    }

    @GetMapping("/signUp")
    public String signup() {
        return "signUp";
    }

    @GetMapping("/product_{productId}")
    public String showDetailProduct(@PathVariable(value = "productId") Long productId, Model model) {
        ProductDTO productDTO = productService.getProductByProductId(productId);
        model.addAttribute("product", productDTO);
        return "user/DetailProduct";
    }
}
