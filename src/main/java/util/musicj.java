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

//云端删除没用歌单

@WebServlet(urlPatterns = "/musicj")
public class musicj extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Jedis jedis = new Jedis("127.0.0.1");  //指定Redis服务Host和port

        System.out.println(jedis.rpop("music"));

        jedis.close();
    }
}
