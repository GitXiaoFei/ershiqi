package lxf.ssm.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lxf.ssm.service.IBlogService;
import lxf.ssm.service.IMessageService;
import lxf.ssm.service.IUserService;
import lxf.ssm.vo.Blog;
import lxf.ssm.vo.Message;

@Controller
@RequestMapping("/blog")
public class BlogController {
    @Resource
    private IUserService userService;

    @Resource
    private IMessageService messageService;

    @Resource
    private IBlogService blogService;

    @RequestMapping("index")
    public String toIndex(HttpServletRequest request, Model model) {
        return "index";
    }

    @RequestMapping("insert")
    public String toinsert(HttpServletRequest request, Model model) {
        return "insert";
    }

    @RequestMapping(value = "/insertBlog", method = RequestMethod.POST)
    public ModelAndView insertBlog(Blog blog) {
        blog.setCreatedate(new Date());
        ModelAndView model = new ModelAndView();
        if (this.blogService.addBlog(blog) > 0)
            System.out.println("添加博客成功！");
        else
            System.out.println("添加博客失败！");
        model.setViewName("index");

        return model;
    }

    @RequestMapping("details")
    public String toDetails(HttpServletRequest request, Model model) {
        return "details";
    }

    @RequestMapping("about")
    public String toAbout(HttpServletRequest request, Model model) {
        return "about";
    }

    @RequestMapping("comment")
    public String toComment(HttpServletRequest request, Model model) {
        return "comment";
    }

    @RequestMapping("message")
    public String toMessage(HttpServletRequest request, Model model) {
        return "message";
    }

    @RequestMapping(value = "/addMessage", method = RequestMethod.POST)
    public ModelAndView addMessage(Message message) throws Exception {
        message.setCreatedate(new Date());
        if (this.messageService.addMessage(message) > 0)
            System.out.println("有人留言成功！");
        else
            System.out.println("有人留言失败！");

        ModelAndView model = new ModelAndView();
        model.setViewName("message");
        return model;
    }
}