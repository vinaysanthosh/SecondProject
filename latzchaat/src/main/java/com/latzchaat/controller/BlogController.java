package com.latzchaat.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.latzchaat.model.Blogs;
import com.latzchaat.service.BlogsService;
import com.latzchaat.service.UserService;

@Controller
public class BlogController {

	UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	BlogsService blogsService;

	public void setBlogsService(BlogsService blogsService) {
		this.blogsService = blogsService;
	}

	@Autowired
	public BlogController(BlogsService blogsService) {

		this.blogsService = blogsService;
	}

	@RequestMapping(value = "/UserHome")
	public ModelAndView getAllBlogs(Model model, Principal p) {
		List<Blogs> list = blogsService.getAllBlogs();
	
		List<Blogs> newlist=new ArrayList<Blogs>();
		
		for (Blogs b : list) {
			String str=b.getStatus();
			
			if(str!="Inactive")
			{
				System.out.println(b.getStatus());
				newlist.add(b);
			}
		}
		
		for (Blogs bl : newlist) {
			System.out.println(bl.getStatus()+"  1");
		}
		
		
		String data = new Gson().toJson(newlist);
		ModelAndView mv = new ModelAndView("UserHome");
		
		mv.addObject("userDetail",userService.getUserByName(p.getName()));
		mv.addObject("data", data);
		mv.addObject("jobs", blogsService.getAllJobs());
		 System.out.println(data);
		return mv;
	}
	
	@RequestMapping(value = "/User")
	public ModelAndView get(Model model, Principal p) {
		
		ModelAndView mv=new ModelAndView("sample");
		mv.addObject("userDetail",userService.getUserByName(p.getName()));
		return mv;
	}
	
	@RequestMapping(value = "/InsertBlog", method = RequestMethod.POST)
	public String insertBlog(@Valid @ModelAttribute("blog") Blogs blog, BindingResult result, Model m,
			HttpServletRequest request) {
		
		if(blog.getOwner()!="" || blog.getStatus()!="")
		{
		blog.setOwner("Student");
		blog.setStatus("Inactive");
		}
		blogsService.insertBlog(blog);
		return "redirect:/UserHome";
	}


	@RequestMapping("/SingleBlog")

	public ModelAndView singleBlogPage(@ModelAttribute("blog") Blogs blog, HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("SingleBlog");
		System.out.println(blog.getBlogid());
		return mv;
	}

}
