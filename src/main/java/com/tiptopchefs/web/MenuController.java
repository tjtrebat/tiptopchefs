package com.tiptopchefs.web;
import com.tiptopchefs.domain.Menu;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/menus")
@Controller
@RooWebScaffold(path = "menus", formBackingObject = Menu.class)
public class MenuController {
}
