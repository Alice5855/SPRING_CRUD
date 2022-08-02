package com.spring.crud;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ArticleController {
	// Dependency Inject
	@Autowired
	private ArticleService articleService;
	
	// Get Article
	// @ModelAttribute("article") = 'request.setAttribute("article", articleService.selectById(vo))'
	@ModelAttribute("article")
	public ArticleVO getArticle() {
		ArticleVO vo = new ArticleVO();
		return articleService.selectById(vo);
	}
	
	// New entry
	@RequestMapping("/article/write.do")
	public String insert(HttpServletRequest req, HttpServletResponse resp, ArticleVO vo) {
		return process(req, resp, vo, "insert");
	}
	
	// Recent entry
	@RequestMapping("/article/read.do")
	public String selectById(ArticleVO vo) {
		return "/WEB-INF/views/readArticle.jsp";
	}
	
	// Update recent entry
	@RequestMapping("/article/modify.do")
	public String update(HttpServletRequest req, HttpServletResponse resp, ArticleVO vo) {
		return process(req, resp, vo, "update");
	}
	
	// Delete recent entry
	@RequestMapping("/article/delete.do")
	public String delete(HttpServletRequest req, HttpServletResponse resp, ArticleVO vo) {
		return process(req, resp, vo, "delete");
	}
	
	// Get, Post 등 request를 분기 처리
	private String process(HttpServletRequest req, HttpServletResponse resp, ArticleVO vo, String query) {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return viewResolverForm(query);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			executeQuery(query, vo);
			return viewResolverSuccess(query);
		} else {
			resp.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	// form 경로 연결
	private String viewResolverForm(String viewName) {
		return "/WEB-INF/views/" + viewName + "Form.jsp";
	}
	
	// Process 성공 view 경로 연결
	private String viewResolverSuccess(String viewName) {
		return "/WEB-INF/views/" + viewName + "Success.jsp";
	}
	
	// 시나리오에 따른 method 처리
	private void executeQuery(String query, ArticleVO vo) {
		if (query == "insert") {
			articleService.insert(vo);
		} else if (query == "update") {
			articleService.update(vo);
		} else if (query == "delete") {
			articleService.delete(vo);
		}
	}

}
