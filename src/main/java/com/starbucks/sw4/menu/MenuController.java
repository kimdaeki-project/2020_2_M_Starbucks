
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

@Controller
@RequestMapping(value = "/menu/**")
public class MenuController {

	@Autowired
	private MenuService menuService;

	@GetMapping("menuDrink")
	public ModelAndView getMenuDrinkList() throws ClassNotFoundException, SQLException {
		System.out.println("menu drink access");
		ModelAndView mv = new ModelAndView();

		List<MenuDTO> menuList = menuService.getMenuList("D");
		List<OptionDTO> opList = menuService.getOptionList();

		System.out.println(menuList);
		mv.addObject("menu", "음료");
		mv.addObject("type", "D");
		
		mv.addObject("list", menuList);
		mv.addObject("opList", opList);
		mv.setViewName("menu/productList");
		
		return mv;
	}

	@GetMapping("menuProduct")
	public ModelAndView getMenuProductList( HttpSession session) throws ClassNotFoundException, SQLException {
		System.out.println("menu product access");
		ModelAndView mv = new ModelAndView();

		List<MenuDTO> menuList = menuService.getMenuList("P");
		List<OptionDTO> opList = menuService.getOptionList();
		
		mv.addObject("menu", "상품");
		mv.addObject("type", "P");

		mv.addObject("list", menuList);
		mv.addObject("opList", opList);
		mv.setViewName("menu/productList");
		
		//session.setAttribute("member", "a");
		
		
		System.out.println(menuList);

		return mv;
	}

	@GetMapping("menuFood")
	public ModelAndView getMenuFoodList() throws ClassNotFoundException, SQLException {
		System.out.println("menu food access");
		ModelAndView mv = new ModelAndView();

		List<MenuDTO> menuList = menuService.getMenuList("F");
		List<OptionDTO> opList = menuService.getOptionList();
		
		mv.addObject("menu", "푸드");
		mv.addObject("type", "F");

		mv.addObject("list", menuList);
		mv.addObject("opList", opList);
		mv.setViewName("menu/productList");
		
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
