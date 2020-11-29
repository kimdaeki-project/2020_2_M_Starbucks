package com.starbucks.sw4.menu.category;

import org.springframework.stereotype.Repository;

@Repository
public class CategoryDTO {

	/*
	 create table menuCategory(
    categoryID number constraint CATEGORY_CI_PK primary key,
    type varchar2(100),
    category varchar2(200)
	);
	
	create sequence menuCate_seq
	    start with 1
	    increment by 1
	    nomaxvalue
	    nominvalue
	    nocycle
	    nocache
	;
	 
	 */
	
	private long categoryId;
	private String type;
	private String category;
	
	public long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
