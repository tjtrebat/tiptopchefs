package com.tiptopchefs.web;
import com.tiptopchefs.domain.MenuItemOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/menuitemorders")
@Controller
@RooWebScaffold(path = "menuitemorders", formBackingObject = MenuItemOrder.class)
public class MenuItemOrderController {
}
