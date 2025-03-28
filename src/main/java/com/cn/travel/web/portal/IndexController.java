package com.cn.travel.web.portal;
import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import com.cn.travel.utils.Tools;
import com.cn.travel.web.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class IndexController extends BaseController {

    @RequestMapping("/login/getCode")
    public void getCode(HttpServletResponse response, HttpSession session) throws IOException {
        //1、验证码对象 HuTool定义图形验证码的长和宽，验证码的位数，干扰线的条数
        LineCaptcha captcha = CaptchaUtil.createLineCaptcha(116, 36, 4, 10);

        //2、放入到session
        session.setAttribute("code",captcha.getCode());

        //3、输出验证码
        ServletOutputStream outputStream = response.getOutputStream();
        captcha.write(outputStream);

        //4、关闭输出流
        outputStream.close();
    }


    @RequestMapping("/index")
    public ModelAndView index(){
        ModelAndView mv = this.getModeAndView();
        /*setViewName()表示跳转到页面的位置/templates/* ,在配置文件yml*/
        mv.setViewName("portal/index");
        return mv;
    }

    @RequestMapping("/goLogin")
    public ModelAndView goLogin(HttpSession httpSession){
        if(Tools.notEmpty(httpSession.getAttribute("userName"))){
            return new ModelAndView("portal/index");
        }
        return new ModelAndView("portal/login");
    }

    @RequestMapping("/goLogout")
    public ModelAndView goLogout(HttpSession httpSession){
        if(Tools.notEmpty(httpSession.getAttribute("userName"))){
            httpSession.removeAttribute("userName");
        }
        return new ModelAndView("portal/login");
    }
}
