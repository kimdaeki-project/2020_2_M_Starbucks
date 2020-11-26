
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
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/drinkList");

		List<MenuDTO> menuList = menuService.getMenuList("D");
		List<OptionDTO> opList = menuService.getOptionList();
		mv.addObject("list", menuList);
		mv.addObject("opList", opList);

		System.out.println(menuList);

		return mv;
	}

	@GetMapping("menuProduct")
	public ModelAndView getMenuProductList() throws ClassNotFoundException, SQLException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/productList");

		List<MenuDTO> menuList = menuService.getMenuList("P");
		List<OptionDTO> opList = menuService.getOptionList();

		mv.addObject("list", menuList);
		mv.addObject("opList", opList);

		System.out.println(menuList);

		return mv;
	}

	@GetMapping("menuFood")
	public ModelAndView getMenuFoodList() throws ClassNotFoundException, SQLException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menu/foodList");

		List<MenuDTO> menuList = menuService.getMenuList("F");
		List<OptionDTO> opList = menuService.getOptionList();

		mv.addObject("list", menuList);
		mv.addObject("opList", opList);

		System.out.println(menuList);

		return mv;
	}

}
