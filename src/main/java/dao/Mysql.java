package dao;

import mysql.Systext;
import org.apache.ibatis.annotations.Param;
import mysql.SysUser;

import java.util.List;

public interface Mysql {

    List<SysUser> login(String username);
    List<SysUser> loginone(@Param("username") String username, @Param("pwd") String pwd);
    boolean delete(@Param("username") String username, @Param("pwd") String pwd);
    boolean delete2(String username);

    boolean update(@Param("username") String username, @Param("nickname") String nickname, @Param("pwd") String pwd, @Param("name") String name);

    boolean update(@Param("sy") SysUser sy, @Param("name") String name);

    boolean updates(@Param("head") String head, @Param("name") String name);

    boolean insert(@Param("username") String username, @Param("nickname") String nickname, @Param("pwd") String pwd);

    boolean insert(SysUser sy);



    List<Systext> logintext();//查询所有

    Systext loginid(int id);//查询id

    boolean inserttext(@Param("st")Systext st);//插入消息

    boolean insertstaus(@Param("nickname") String nickname,@Param("staus") int staus);
//    插入撤回

    boolean deletestaus(int staus);
//    删除某些消息

    boolean deletetext(int id);
//    删除撤回消息


}
