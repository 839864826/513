package mysql;

import dao.Mysql;
import org.apache.ibatis.session.SqlSession;
import java.util.List;

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

    public static boolean insert(String email,String username,String pwd){
        try {
            return userMysql.insert(email,username,pwd);
        }catch (Exception e){
            return false;
        }
    }

}
