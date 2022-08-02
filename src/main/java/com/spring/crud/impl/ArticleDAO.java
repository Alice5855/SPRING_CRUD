package com.spring.crud.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.crud.ArticleVO;

@Repository
public class ArticleDAO {
	// Data Access Object

	// Utilize Mybatis template
	private SqlSessionTemplate mybatis;

	// Dependency Injection
	@Autowired
	public ArticleDAO(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	public void insert(ArticleVO vo) {
		mybatis.insert("ArticleDAO.insert", vo);
	}
	
	public ArticleVO selectById(ArticleVO vo) {
		return (ArticleVO) mybatis.selectOne("ArticleDAO.selectById", vo);
	}
	
	public void update(ArticleVO vo) {
		mybatis.update("ArticleDAO.update", vo);
	}
	
	public void delete(ArticleVO vo) {
		mybatis.delete("ArticleDAO.delete", vo);
	}
	
}
