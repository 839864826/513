package mains;

import mysql.Accountmysql;
import mysql.SysUser;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//修改个人信息
@WebServlet(urlPatterns = "/userxg")
public class update extends HttpServlet {
    public Accountmysql accountmysql;

    public void init() throws ServletException {
        accountmysql=new Accountmysql();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        SysUser sy=new SysUser();
        sy.setUsername(req.getParameter("email"));
//        sy.setHead(req.getParameter("head"));
        sy.setNickname(req.getParameter("nickname"));
        sy.setSignature(req.getParameter("signature"));
        sy.setBirthday(req.getParameter("birthday"));
        sy.setSex(req.getParameter("sex"));
        sy.setAddress(req.getParameter("address"));
        sy.setPhone(req.getParameter("phone"));
        sy.setPwd(req.getParameter("pwd"));
        boolean a=accountmysql.update(sy);
        JSONObject ans=new JSONObject();
        if(a){
            ans.put("ret",1);
        }else {
            ans.put("ret",2);
        }
       resp.getOutputStream().print(ans.toString());
    }
}
