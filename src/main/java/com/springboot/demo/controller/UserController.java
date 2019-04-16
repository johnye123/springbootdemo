package com.springboot.demo.controller;

import com.springboot.demo.model.Person;
import com.springboot.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/paper")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/allPaper")
    public String selectUser(ModelMap model) {
        List<Person> list = userService.selectUser();
        model.addAttribute("list", list);
        //上一步创建的jsp页面,按住ctrl键，鼠标放在showUserInfo上就可以看到jsp文件
        return "allPaper";
    }
    @RequestMapping("toAddPaper")
    public String toAddPaper() {
        return "addPaper";
    }

    @RequestMapping("/addPaper")
    public String addPaper(Person paper) {
        userService.addPaper(paper);
        return "redirect:/paper/allPaper";
    }

    @RequestMapping("/del/{id}")
    public String deletePaper(@PathVariable("id") Long id) {
        userService.deletePaperById(id);
        return "redirect:/paper/allPaper";
    }

    @RequestMapping("toUpdatePaper")
    public String toUpdatePaper(Model model, Long id) {
        model.addAttribute("paper", userService.queryById(id));
        return "updatePaper";
    }

    @RequestMapping("/updatePaper")
    public String updatePaper(Model model, Person paper) {
        userService.updatePaper(paper);
        paper = userService.queryById(paper.getId());
        model.addAttribute("paper", paper);
        return "redirect:/paper/allPaper";
    }

    @RequestMapping("/reBack")
    public String reBack(){
        return "redirect:/paper/allPaper";
    }
}
