
package com.starbucks.sw4.menu;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.starbucks.sw4.menu.category.CategoryDTO;

@Controller
@RequestMapping(value = "/menu/**")
public class MenuController {

	@Autowired
	private MenuService menuService;

	@GetMapping("menuDrink")
	public ModelAndView getMenuDrinkList(MenuDTO menuDTO) throws ClassNotFoundException, SQLException {
		System.out.println("menu drink access");
		ModelAndView mv = new ModelAndView();
		
		if(menuDTO.getCategory() == null) {
			menuDTO.setCategory("");
		}
		menuDTO.setType("D");

		List<MenuDTO> menuList = menuService.getMenuList(menuDTO);
		List<CategoryDTO> categoryList = menuService.getCategoryList(menuDTO);

		System.out.println(menuList);
		mv.addObject("menu", "음료");
		mv.addObject("type", "D");
		
		mv.addObject("categoryList", categoryList);
		mv.addObject("list", menuList);
		//mv.setViewName("menu/productList");
		//하늘 테스트
		mv.setViewName("menu/tmp_productList");
		
		return mv;
	}

	@GetMapping("menuProduct")
	public ModelAndView getMenuProductList(MenuDTO menuDTO) throws ClassNotFoundException, SQLException {
		System.out.println("menu product access");
		ModelAndView mv = new ModelAndView();
		
		if(menuDTO.getCategory() == null) {
			menuDTO.setCategory("");
		}
		menuDTO.setType("P");

		List<MenuDTO> menuList = menuService.getMenuList(menuDTO);
		List<CategoryDTO> categoryList = menuService.getCategoryList(menuDTO);
		
		mv.addObject("menu", "상품");
		mv.addObject("type", "P");

		mv.addObject("categoryList", categoryList);
		mv.addObject("list", menuList);
		//mv.setViewName("menu/productList");
		//하늘 테스트
		mv.setViewName("menu/tmp_productList");

		System.out.println(menuList);

		return mv;
	}

	@GetMapping("menuFood")
	public ModelAndView getMenuFoodList(MenuDTO menuDTO) throws ClassNotFoundException, SQLException {
		System.out.println("menu food access");
		ModelAndView mv = new ModelAndView();
		
		if(menuDTO.getCategory() == null) {
			menuDTO.setCategory("");
		}
		menuDTO.setType("F");

		List<MenuDTO> menuList = menuService.getMenuList(menuDTO);
		List<CategoryDTO> categoryList = menuService.getCategoryList(menuDTO);
		
		mv.addObject("menu", "푸드");
		mv.addObject("type", "F");

		mv.addObject("categoryList", categoryList);
		mv.addObject("list", menuList);
		//mv.setViewName("menu/productList");
		//하늘 테스트
		mv.setViewName("menu/tmp_productList");
		
		System.out.println(menuList);

		return mv;
	}


	@GetMapping("getStore")
	@ResponseBody
	public List<StoreSDTO> getStore(MenuDTO dto) throws ClassNotFoundException, SQLException {
		
		ModelAndView mv = new ModelAndView();

		String limitedStore = dto.getLimitedStore();
		System.out.println(limitedStore);
		
		List<String> limitedStoreList = Arrays.asList(limitedStore.split("@"));
		List<StoreSDTO> storeList = new ArrayList<StoreSDTO>();
		
		for(String s : limitedStoreList) {
			List<StoreSDTO> list = menuService.getStoreList(s);
			storeList.addAll(list);
		}
		
		//mv.addObject("list", storeList);
		//mv.setViewName("menu/productList");
		
		System.out.println(storeList);
		for(StoreSDTO s : storeList) {
			System.out.println(s.getStoreName());
		}

		return storeList;
	}

}
