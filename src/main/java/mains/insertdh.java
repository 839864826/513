package mains;

import mysql.Accountmysql;
import mysql.Systext;
import org.json.JSONObject;
import util.FileUtil;
import util.imgutil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(urlPatterns = "/insertdh")
//插入对话
public class insertdh extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        JSONObject jsonObject = new JSONObject();
        try {

            Systext st = new Systext();
            st.setEmail(req.getParameter("email"));
            st.setHead(req.getParameter("head") == null ? "https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1475331839,2066156315&fm=26&gp=0.jpg" : req.getParameter("head"));
            st.setNickname(req.getParameter("nickname"));
            st.setStaus(Integer.parseInt(req.getParameter("seate")));
            st.setTime(new Date().toString());
            String x = req.getParameter("text");
            if (x.contains("data:image/png;base64")) {
                String tar=System.currentTimeMillis()+".jpg";
                imgutil.GenerateImage(x,tar);
                st.setText(FileUtil.upcos(new File(tar)));
            } else {
                st.setText(req.getParameter("text"));
            }
            boolean b = new Accountmysql().inserttext(st);
            if (b) {
                jsonObject.put("ret", 1);
            } else {
                jsonObject.put("ret", 2);
            }
        }catch(Exception e){
            e.printStackTrace();
            jsonObject.put("ret", 2);
        }

        resp.getOutputStream().print(jsonObject.toString());

    }
}
