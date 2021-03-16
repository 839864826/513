package dao;

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

    boolean insert(@Param("username") String username, @Param("nickname") String nickname, @Param("pwd") String pwd);

    boolean insert(SysUser sy);


}
