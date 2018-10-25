package com.qf.login.controller;

import com.qf.login.model.User;
import com.qf.login.service.impl.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class LoginController {

    @Autowired
    private LoginService ser ;

    @RequestMapping(value = "/gateway" ,method= RequestMethod.GET)
    public String toGateWay(){
        return "gateway";
    }

    /*@RequestMapping(value = "/{path}",method = RequestMethod.GET)
    public  String toPage(@PathVariable String path){

        return path;
    }*/

    @RequestMapping(value = "/register")
    public String toRegister(){


        return "register";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/reg")
    @ResponseBody
    public String Reg(User user ){
        System.out.println("注册用户："+user.getUsername()+user.getPassword());
        System.out.println(user.hashCode());

        /*System.out.println("注册方法执行了");
        System.out.println("注册用户："+user.getUsername()+user.getPassword());
        user.setId(1);
        ser.register(user);
        model.addAttribute("msg","注册成功");*/
        ser.register(user);
        System.out.println(user.hashCode());

        return "success";
    }

    @RequestMapping(value = "/login")
    public String tlogin(){


        return "login";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/log")
   /* @ResponseBody*/
    public void toLogin(String username , String password, ModelAndView mv, HttpSession session , HttpServletResponse response) throws IOException {
            System.out.println("用户登录："+username+password);
           User user =  ser.login(username, password);
           if(user!=null){
               //登录成功，将User对象设置到HttpSession作用域中
               session.setAttribute("user",user);

               response.getWriter().write("success");
           }else{
               //登录失败，显示提示信息， 并调回本页面
                    mv.addObject("密码或用户名错误");
                   // mv.setView("/login");
           }
            /*model.addAttribute("msg","登陆成功");*/
            //登录成功跳转到后台管理页面
            /*return "success";*/
    }

    @RequestMapping(value = "/index")
    public String tgin(){


        return "index";
    }




}
