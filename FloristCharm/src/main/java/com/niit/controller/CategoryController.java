package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.Dao.CategoryDao;
import com.niit.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDao categoryDao;
	@RequestMapping(value="addCategory",method=RequestMethod.POST)
	public String addCategory(@ModelAttribute Category cat,Model m)
	{
		
		categoryDao.addCategory(cat);
		List<Category> listCategory=categoryDao.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}
	@RequestMapping(value="/category",method=RequestMethod.GET)
	public String showCategory(Model m)
	{ 
		List<Category> listCategory=categoryDao.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}}

