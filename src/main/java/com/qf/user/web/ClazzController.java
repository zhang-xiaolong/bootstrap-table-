package com.qf.user.web;

import com.qf.user.model.Clazz;
import com.qf.user.model.Teacher;
import com.qf.user.service.impl.ClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class ClazzController {

    @Autowired
    private ClazzService ser;

   /* @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";
    }
*/
    @RequestMapping(value = "/clazz",method = RequestMethod.GET)
    public String toPage(){
        return "clazz";
    }

    @RequestMapping(value="/bjmh")
    @ResponseBody
    public ModelAndView findAll() {
        List<Clazz> list = ser.findAll();
        ModelAndView model = new ModelAndView("bjmh");
        model.addObject("list",list);
        return model ;
    }

    @RequestMapping("/search")
    @ResponseBody
    public List<Clazz> search(String str) {
        List<Clazz> list =  ser.search(str);
        return list ;
    }

    @RequestMapping(value="/users.action")
    @ResponseBody
    public Map<String,Object> findAllByPageAndSearch(@RequestBody Map<String,Object> map,HttpServletRequest request) {
        //System.out.println(map);
        Map<String, Object> map2 = ser.getAllByPageAndSearch(map);
        return map2;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public void toDelete(Integer id) {
        ser.delete(id);
    }

    @RequestMapping(value="/edit")
    @ResponseBody
    public List<Teacher> findTeacher() {
        List<Teacher> list = ser.findTeacher();
        return list;
    }

    @RequestMapping("/modify")
    public String  toModify(Clazz clazz){
        ser.modify(clazz);
        return "redirect:/clazz";
    }

    @RequestMapping("/add")
    public String  toAdd(Clazz clazz){
        ser.add(clazz);
        return "redirect:/clazz";
    }

    @RequestMapping(value="/teacher")
    @ResponseBody
    public List<Teacher> teacher(Integer thid) {
        List<Teacher> list = ser.teacher(thid);
        return list;
    }

}
