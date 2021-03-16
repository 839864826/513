package mains;

import mysql.Accountmysql;
import org.json.JSONObject;

import javax.servlet.http.HttpServlet;
import java.io.IOException;


//登录验证
public class Signin extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

//        String username = request.getParameter("username");
//        String pwd = request.getParameter("pwd");
        JSONObject ans=new JSONObject();
//        if (username == null || "".equals(username) || pwd == null || "".equals(pwd)) {
////            request.setAttribute("info", "用户名或密码不能为空！");
////            request.getRequestDispatcher("").forward(request, response);
//
//        } else {
//            String path = "";

        try {

//                boolean a=new Accountmysql().login(username,pwd);
//                System.out.println(request.getParameter("email")+request.getParameter("passwd"));

            String email=request.getParameter("email");
            boolean a=new Accountmysql().loginone(email,request.getParameter("passwd"));
            //判断账号密码正确性

//                path = username + "用户，密码为：" + pwd +
//                        "，欢迎您访问本页面";
            if (a) {//账号密码正确
                ans.put("ret",1);
                request.getSession().setAttribute("email",email);

                request.getSession().setMaxInactiveInterval(30 * 60);

//                    request.setAttribute("info", path);
//                    request.getRequestDispatcher("welcome.jsp").forward(request, response);
            }else {//账号密码错误
                ans.put("ret",2);
//                    request.setAttribute("info", "用户名或密码错误");
//                    request.getRequestDispatcher("").forward(request, response);
            }

            response.getOutputStream().print(ans.toString());//获得$.ajax的信息

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
//    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
