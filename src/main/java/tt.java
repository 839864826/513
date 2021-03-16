

import mysql.JDPC;
import mysql.SysUser;
import dao.Mysql;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class tt {

    public static void main(String[] args) throws Exception{


        //第一步：获得SqlSession对象
        SqlSession sql= JDPC.getSession();
        //执行SQL
        Mysql usersql =sql.getMapper(Mysql.class);
//
     List<SysUser> userList= usersql.login("839864826@qq.com");
//
//        List<SysUser> userLists=userMysql.loginone("839864826@qq.com","555");
//
//        SysUser a=new SysUser();
//        a.setNickname("55");
//        a.setUsername("5ss.@qq.com");
//        a.setPwd("55");
//
//        if(!userLists.isEmpty()&&userLists!=null&&userLists.size()>0)
//        {
//            System.out.println("空");
//        }

//        try {
//            System.out.println("修改"+userMysql.insert("2sss2@qq.com","1s","1s"));
//        }catch (Exception e){
//            System.out.println("失败");
//        }
//
//        try {
//
//            System.out.println("修改"+userMysql.insert(a));
//        }catch (Exception e){
//            System.out.println("插入失败");
//        }
//        System.out.println("修改ssss"+userMysql.update(a,"1@gmail.com"));

//        System.out.println( userMysql.delete("1@qq.com","1"));

//        System.out.println( userMysql.delete2("1@163.com"));
//
//        System.out.println( usersql.loginone("839864826@qq.com","555"));

        System.out.println(userList);


        //关闭连接
        sql.close();

    }
}
