package cn.edu.zut.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session=httpServletRequest.getSession();
        if(session.getAttribute("user") !=null){
            return true;//放行
        }else{
            //没有登录 跳转到登录页面进行登录操作
//            httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/loginUser");
            httpServletRequest.getRequestDispatcher("/loginUser").forward(httpServletRequest,httpServletResponse);
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }


//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//
//        //已经登录了就放行 否则进行拦截
//        HttpSession session=request.getSession();
//        if(session.getAttribute("user")!=null){
//            return true;//放行
//        }else{
//            //没有登录 跳转到登录页面进行登录操作
////            response.sendRedirect(request.getContextPath()+"/loginUser");
//            request.getRequestDispatcher("/loginUser").forward(request,response);
//            return false;
//        }
//    }



}
