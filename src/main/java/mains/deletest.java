//package mains;
//
//import mysql.Accountmysql;
//import org.json.JSONObject;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebServlet(urlPatterns = "/insertspaus")
////查询所有
//public class dele extends HttpServlet {
//
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        doPost(req, resp);
//    }
//
//
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//        JSONObject jsonObject=new JSONObject();
//        try{
//
//            String nick=req.getParameter("nickname");
//            int seat=Integer.parseInt(req.getParameter("spaus"));
//
//
//            boolean b=new Accountmysql().insertstaus(nick,seat);
//
//            if(b){
//                jsonObject.put("ret",1);
//            }else{
//                jsonObject.put("ret",2);
//            }
//
//        }catch (Exception e){
//            e.printStackTrace();
//            jsonObject.put("ret",2);
//        }
//
//        resp.getOutputStream().print(jsonObject.toString());
//    }
//}
