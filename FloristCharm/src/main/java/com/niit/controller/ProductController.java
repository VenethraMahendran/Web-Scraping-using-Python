package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.Dao.ProductDao;
import com.niit.model.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="addProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile fileDetail,Model m)
	{
		productDao.addProduct(product);
		String path="C:\\Ecommerce\\FloristCharm\\src\\main\\resources\\";
		
		String totalFileWithPath=path+String.valueOf(product.getProductId())+".jpg";
		
		File productImage=new File(totalFileWithPath);

		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[]=fileDetail.getBytes();
				FileOutputStream fos=new FileOutputStream(productImage);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("FileException",e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error","Problem in File Uploading");
		}
		Product product1=new Product();
		m.addAttribute(product1);
		
		return "Product";
	}
	
	/*@RequestMapping(value="addProduct",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute Product prod,Model m)
	{
		productDao.addProduct(prod);
		List<Product> listProduct=productDao.retrieveProduct();
		m.addAttribute("productList",listProduct);
		
		return "Product";
	}*/
	@RequestMapping(value="Product")
	public String add(Model m)
	
	{
		return "Product";
	}
	@RequestMapping(value="/product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{ 
		List<Product> listProduct=productDao.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "Product";
	}}



