package util;

import mysql.Accountmysql;
import mysql.Sysmusic;
import org.json.JSONObject;
import redis.clients.jedis.Jedis;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.Map;

//云端存入歌单

@WebServlet(urlPatterns = "/music")
public class music extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        JSONObject jsonObject=new JSONObject();
//        Sysmusic sm=new Sysmusic();
        String mid=req.getParameter("mid");
        String name=req.getParameter("name");
        String pic=req.getParameter("pic");
        String length=req.getParameter("length");
        String singer=req.getParameter("singer");

//        List<String> ls={mid,name,pic,length,singer};

//        sm.setMid(mid);
//        sm.setName(name);
//        sm.setPic(pic);
//        sm.setLength(length);
//        sm.setSinger(singer);


        Jedis jedis = new Jedis("127.0.0.1");  //指定Redis服务Host和port
        JSONObject data=new JSONObject();
        data.put("mid",mid);
        data.put("name",name);
        data.put("pic",pic);
        data.put("length",length);
        data.put("singer",singer);
        jedis.lpush("music",data.toString());
        jedis.llen("music");


        jedis.close(); //使用完关闭连接


    }


    }
