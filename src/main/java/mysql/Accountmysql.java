package mysql;

import dao.Mysql;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import java.util.List;

//账号和对话的增删改查

public class Accountmysql {
    public static Mysql userMysql;

    static {
        SqlSession sqlSession= JDPC.getSession();
        //执行SQL
         userMysql =sqlSession.getMapper(Mysql.class);
         //
    }//调用dao里的Mysql;

    public static boolean loginone(String username,String pwd){
        try {
            System.out.println("登录请求："+username+" "+pwd);
            return userMysql.loginone(username, pwd).size() > 0;

        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
    //登录
    public static SysUser login(String username){
        try {
            List<SysUser> login = userMysql.login(username);
            if(login.size()==0) {
                return null;
            }else {
                return login.get(0);
            }

        }catch (Exception e){
            return null;
        }
    }
    //用邮箱返回用户信息

    public static boolean insert(SysUser sy){
        try {
            return userMysql.insert(sy);
        }catch (Exception e){
            return false;
        }
    }


    public static boolean update(SysUser sy){
        try {
            return userMysql.update(sy,sy.getUsername());
        }catch (Exception e){
            return false;
        }
    }

    public static boolean update(String head,String name){
        try {
            return userMysql.updates(head,name);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }


    public static boolean insert(String email,String username,String pwd){
        try {
            return userMysql.insert(email,username,pwd);
        }catch (Exception e){
            return false;
        }
    }


    public static List<Systext> logintext(){
        try {
            List<Systext> logint = userMysql.logintext();
            if(logint.size()==0) {
                return null;
            }else {
                return logint;
            }
        }catch (Exception e){
            return null;
        }
    }
//    查询登录信息

    public static Systext loginid(int id){

        try {
            Systext logint = userMysql.loginid(id);

            return logint;

        }catch (Exception e){
            return null;
        }
    }
//    查询登录信息

    public static boolean inserttext(Systext st){
        try {
            return userMysql.inserttext(st);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
//    插入写的内容


    public static boolean insertstaus(String nickname,int staus){
        try {
            return userMysql.insertstaus(nickname,staus);
        }catch (Exception e){
            return false;
        }
    }
//    插入撤回的消息 0表示发出的消息  1是谁撤回消息 2是进入房间  3是退出房间


    public static boolean deletetext(int id){
        try {
            return userMysql.deletetext(id);
        }catch (Exception e){
            return false;
        }
    }
//    删除撤回的消息

public static boolean deletestaus(int staus){
    try {
        return userMysql.deletestaus(staus);
    }catch (Exception e){
        e.printStackTrace();
        return false;
    }
}
//    删除撤回的消息


}
