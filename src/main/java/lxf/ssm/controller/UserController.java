package lxf.ssm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import lxf.ssm.service.IUserService;
import lxf.ssm.vo.User;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;
	
	@RequestMapping("showUser")
	public String toIndex(HttpServletRequest request, Model model){
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "User";
	}
	
	@RequestMapping("login/login")
    public String logining(HttpServletRequest request, Model model) {
        return "login";
    }
	
	/*@RequestMapping("login")
	public String login(HttpServletRequest request, Model model) {
	    User user = new User();
	    user.setUserName(request.getParameter("userName"));
	    user.setPassword(request.getParameter("password"));
	    int count = this.userService.selectByUser(user);
	    if(count > 0)
	        return "index";
	    else
	        return "login";
	}*/
	
	@RequestMapping("login")
	@ResponseBody
	public Map<String,Object> login(HttpServletRequest request, HttpServletResponse response) {
	    Map<String,Object> responseMap = new HashMap<String, Object>();
	    System.err.println("获取登录用户："+request.getParameter("user"));
        User user = new User();
        user.setUserName(request.getParameter("user"));
        user.setPassword(request.getParameter("passwd"));
        if(this.userService.selectByUser(user) > 0) {
            responseMap.put("code", "200");//状态码
            responseMap.put("msg", "登录成功，客官里面请！");//信息描述
            //创建session对象
            HttpSession session = request.getSession();
            //把用户数据保存在session域对象中
            session.setAttribute("loginName", request.getParameter("user"));
        }else {
            responseMap.put("code", "500");//状态码
            responseMap.put("msg", "登录失败，请核对后再试！");//信息描述
        }
        System.out.println("接口返回的json：" + JSON.toJSONString(responseMap));
        return responseMap;
	}
}