package mains;

import mysql.Accountmysql;
import mysql.Systext;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

@WebServlet(urlPatterns = "/textlo")
//查询所有对话
public class textlo extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        JSONObject jsonObject=new JSONObject();

        try{
            List<Systext> sy=new Accountmysql().logintext();
            jsonObject.put("data",sy);

            jsonObject.put("ret",1);
        }catch (Exception e){
            jsonObject.put("ret",2);
        }

        //OutputStream outputStream = resp.getOutputStream();
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().println(jsonObject);
    }
}
