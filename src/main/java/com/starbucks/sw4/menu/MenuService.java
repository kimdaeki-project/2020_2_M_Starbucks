package com.starbucks.sw4.menu;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuService {
	
	@Autowired
	private MenuDAO menuDAO;
	
	public MenuDTO getOne(MenuDTO menuDTO) throws SQLException, ClassNotFoundException{
		System.out.println(menuDTO.getMenuCode());
		return menuDAO.getOne(menuDTO);
	}
	
	public List<MenuDTO> getMenuList(MenuDTO menuDTO) throws SQLException, ClassNotFoundException{
		return menuDAO.getMenuList(menuDTO);
	}

	public List<OptionDTO> getOptionList() throws SQLException, ClassNotFoundException{
		return menuDAO.getOptionList();
	}
	
	public List<StoreSDTO> getStoreList(String limitedStore) throws SQLException, ClassNotFoundException{
		return menuDAO.getStoreList(limitedStore);
	}
	
}
