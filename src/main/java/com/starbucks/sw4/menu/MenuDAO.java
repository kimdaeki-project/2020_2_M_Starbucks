package com.starbucks.sw4.menu;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MenuDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.starbucks.sw4.menu.MenuDAO.";
	
	public MenuDTO getOne(MenuDTO menuDTO) throws SQLException, ClassNotFoundException{
		System.out.println(menuDTO.getMenuCode());
		return sqlSession.selectOne(NAMESPACE+"getOne", menuDTO);
	}
	
	public List<MenuDTO> getMenuList(String type) throws SQLException, ClassNotFoundException{
		return sqlSession.selectList(NAMESPACE+"getMenuList", type);
	}

	public List<OptionDTO> getOptionList() throws SQLException, ClassNotFoundException{
		return sqlSession.selectList(NAMESPACE+"getOptionList");
	}
	
	public List<StoreSDTO> getStoreList(String limitedStore) throws SQLException, ClassNotFoundException{
		return sqlSession.selectList(NAMESPACE+"getStoreList", limitedStore);
	}
}
