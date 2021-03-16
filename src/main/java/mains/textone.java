package mains;

import mysql.Accountmysql;
import mysql.Systext;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//查询一句
@WebServlet(urlPatterns = "/textone")
public class textone extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        JSONObject jsonObject=new JSONObject();

        try{
            Systext sy=new Accountmysql().loginid(new Integer(req.getParameter("id")));
            jsonObject.put("data",sy);

            jsonObject.put("ret",1);
        }catch (Exception e){
            jsonObject.put("ret",2);
        }

        resp.getOutputStream().print(jsonObject.toString());
    }
}
