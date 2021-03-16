package mail;

import mysql.Accountmysql;
import mysql.SysUser;
import org.json.JSONObject;

import javax.servlet.http.HttpServlet;
import java.io.IOException;

public class sendmail extends HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {


        JSONObject ans=new JSONObject();

        try{
            String email=request.getParameter("email");
            if(email==""||email==null||email.equals(new String())){
                ans.put("ret",3);
            }else {
                SysUser su = new Accountmysql().login(email);
                if(su==null){
                    ans.put("ret",4);
                }
                else if (su.getPwd() != "" && method.send(su.getUsername(), su.getPwd())) {
                    ans.put("ret", 1);
                } else {
                    ans.put("ret", 2);
                }
            }

            //boolean a=new Accountmysql().

            response.getOutputStream().print(ans.toString());//获得$.ajax的信息

        }catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
