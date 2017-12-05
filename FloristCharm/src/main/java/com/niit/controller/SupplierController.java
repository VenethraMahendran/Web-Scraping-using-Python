package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.Dao.SupplierDao;
import com.niit.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierDao supplierDao;
	@RequestMapping(value="addSupplier",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute Supplier sup,Model m)
	{
		/*Supplier supplier=new Supplier();
		supplier.setSupplierId(supplierId);
		supplier.setSupplierName(supplierName);
		supplier.setSupplierDes(supplierDes);
		supplier.setSupplierEmail(supplierEmail);*/
		/*m.addAttribute(sup);*/
		
		supplierDao.addSupplier(sup);
		List<Supplier> listSupplier=supplierDao.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		
		return "Supplier";
	}
	@RequestMapping(value="Supplier")
	public String add(Model m)
	
	{
		return "Supplier";
	}
	@RequestMapping(value="/supplier",method=RequestMethod.GET)
	public String showSupplier(Model m)
	{ 
		List<Supplier> listSupplier=supplierDao.retrieveSupplier();
		m.addAttribute("supplierList",listSupplier);
		return "Supplier";
	}}

