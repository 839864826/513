package mains;

import mysql.Accountmysql;
import org.json.JSONObject;
import util.FileUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;


//没用到
@WebServlet(urlPatterns = "/upload")
public class fileupload extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Map<String, Object> map = FileUtil.FileUpload(req);
        JSONObject jsonObject=new JSONObject();
        boolean b;
        System.out.println(map.get("pic").toString()+ map.get("email").toString());
        if(map.get("issave")!=null){
            if(map.get("issave")=="no"||map.get("issave").equals("no"))
            b=true;
            else b=false;
        }
        else {
            b = new Accountmysql().update(map.get("pic").toString(), map.get("email").toString());
        }
        if(b){
            jsonObject.put("pic",map.get("pic").toString());
            jsonObject.put("ret",1);
        }else {
            jsonObject.put("ret",2);
        }
        resp.getOutputStream().print(jsonObject.toString());

    }
}
