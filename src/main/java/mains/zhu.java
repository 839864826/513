package mains;

import mysql.Accountmysql;
import org.json.JSONObject;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;


//注册账号
public class zhu extends HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {


        JSONObject ans=new JSONObject();
        try{

            String email=request.getParameter("email");
            String username=request.getParameter("name");
            String pwd=request.getParameter("passwd");

            boolean a=new Accountmysql().insert(email,username,pwd);
            if (a) {//账号密码正确
                ans.put("ret",1);

                request.getSession().setAttribute("email",email);
//                    request.setAttribute("info", path);
//                    request.getRequestDispatcher("welcome.jsp").forward(request, response);
            }else {//账号密码错误
                ans.put("ret",2);
//                    request.setAttribute("info", "用户名或密码错误");
//                    request.getRequestDispatcher("").forward(request, response);
            }


            response.getOutputStream().print(ans.toString());//获得$.ajax的信息
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
