package util;

import mysql.Sysmusic;
import org.json.JSONArray;
import org.json.JSONObject;
import redis.clients.jedis.Jedis;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//云端取出歌单

@WebServlet(urlPatterns = "/musicd")
public class musicd extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Jedis jedis = new Jedis("127.0.0.1");  //指定Redis服务Host和port
//        JSONObject data = new JSONObject();
        Long len=jedis.llen("music");
        List<String> music = jedis.lrange("music", 0, len);
        JSONArray jsonArray=new JSONArray();
//        for(int i=0;i<music.size();i++){
//            JSONObject jsonObject=new JSONObject(music.get(i));
//            jsonArray.put(jsonObject);
//        }
        for(int i=music.size()-1;i>=0;i--){
            JSONObject jsonObject=new JSONObject(music.get(i));
            jsonArray.put(jsonObject);
        }
        resp.setContentType("text/html;charset=UTF-8");

//        resp.getOutputStream().print(jsonArray.toString());
        resp.getWriter().print(jsonArray.toString());

        jedis.close();
    }
}
