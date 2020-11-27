
package com.starbucks.sw4.menu;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
		List<OptionDTO> optList = menuService.getOptionList();
		
		mv.addObject("list", menuList);
		mv.addObject("optList", optList);
		mv.setViewName("menu/drinkList");
		
		System.out.println(menuList);

		return mv;
	}

	@GetMapping("menuProduct")
	public ModelAndView getMenuProductList() throws ClassNotFoundException, SQLException {
		System.out.println("menu product access");
		ModelAndView mv = new ModelAndView();

		List<MenuDTO> menuList = menuService.getMenuList("P");
		List<OptionDTO> optList = menuService.getOptionList();

		mv.addObject("list", menuList);
		mv.addObject("optList", optList);
		mv.setViewName("menu/productList");
		
		System.out.println(menuList);

		return mv;
	}

	@GetMapping("menuFood")
	public ModelAndView getMenuFoodList() throws ClassNotFoundException, SQLException {
		System.out.println("menu food access");
		ModelAndView mv = new ModelAndView();

		List<MenuDTO> menuList = menuService.getMenuList("F");
		List<OptionDTO> optList = menuService.getOptionList();

		mv.addObject("list", menuList);
		mv.addObject("optList", optList);
		mv.setViewName("menu/foodList");
		
		System.out.println(menuList);

		return mv;
	}

}
