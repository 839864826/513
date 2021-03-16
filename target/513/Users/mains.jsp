<%@ page import="mysql.SysUser" %>
<%@ page import="mysql.Accountmysql" %>
<%@ page import="mysql.Systext" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 83986
  Date: 2020/12/14
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn" class="windows desktop portrait">
<script type="text/javascript"  charset="UTF-8" src="../js/main.js"></script>
<%--音乐大厅的点击--%>


<script src="../js/sweetalert2.all.min.js"></script>
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<head>
    <meta charset="utf-8">

    <link rel="icon" href="//yuanqi-wallpaper.zhhainiao.com/favicon.ico">
    <%--    lougo位置--%>

    <title>欢迎来到中乐乐音乐会</title>

    <style>
        .bbbug_dark .bbbug_dark_cover {
            mix-blend-mode: difference;
            position: fixed;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            z-index: 99999999999999;
            pointer-events: none;
            background-color: rgba(255, 255, 255, 0.85);
        }

        .bbbug_dark .bbbug_main_box {
            background-color: rgba(255, 255, 255, 0.5);
            box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.9);
        }

        .bbbug_dark .el-loading-mask {
            background-color: rgba(0, 0, 0, 0.3);
        }

        .bbbug_dark .bbbug_bg,
        .bbbug_dark .el-loading-mask,
        .bbbug_dark .bbbug_main_menu,
        .bbbug_dark .iconfont,
        .bbbug_dark .bbbug_link,
        .bbbug_dark .bbbug_main_menu_song_bg,
        .bbbug_dark .pswp,
        .bbbug_dark .v-modal {
            filter: invert(0.85) contrast(2);
        }

        .bbbug_dark .bbbug_main_chat img,
        .bbbug_dark .bbbug_main_right img {
            filter: invert(0.85) contrast(2);
        }

        .bbbug_dark .bbbug_main_chat_head_image,
        .bbbug_dark .bbbug_main_right_online_user_head_image,
        .bbbug_dark .bbbug_main_menu_song_bg {
            border: 1px solid #333;
        }
    </style>

    <link rel="stylesheet" href="../css/1.css">
    <link rel="stylesheet" href="../css/font_666204_xmxgte4zjil.css">
    <%--    //<link rel="stylesheet" href="../css/2.css">--%>
    <link rel="stylesheet" href="../css/3.css">
    <link rel="stylesheet" href="../css/4.css">

    <link rel="stylesheet" href="../css/fujian/info.css">
    <%--    我的个人中心格式--%>


    <script>
    var x='<%out.print(request.getSession().getAttribute("email").toString());%>';
    if(x=='null'||x==''){
        swal('登录失效','请重新登录','error');
        window.location.href='../index.jsp';
    }
  </script>


      <%
          SysUser sy=  new Accountmysql().login(request.getSession().getAttribute("email").toString());
    %>
</head>
<body>

<div  id="anhei" class="">
    <div id="app">

        <div  onclick="bj()"  class="bbbug_bg" style="background-image: url(../zhu/new/images/background_Idea.jpg);"></div>
<%--背景图片--%>



        <div class="bbbug_link">

            <a href="../Users/three.jsp" target="_blank">贡献名单</a>
        </div>
<%--        小组贡献名单--%>


        <audio id="music" src="https://api.bbbug.com//api/song/playurl?mid=440613" autoplay="autoplay" control1=""></audio>
<%--        放歌--%>


        <div id="bj" class="bbbug_main"  >
            <div class="bbbug_main_box">
                <div class="bbbug_main_menu"  >


                    <div title="我的个人中心" onclick="hond()" class="bbbug_main_menu_head">
                        <img src="<%
                        out.print(sy.getHead());
                        %>" onerror="">
                    </div>


                    <div>

                        <div class="bbbug_main_menu_icon" onclick="ge()">
                            <div>
                                <img src="../zll/menubar_picksong.png" title="点歌">
                                <div>点歌</div>
                            </div>
                        </div>
                        <%--                            点歌--%>


                        <div class="bbbug_main_menu_icon" onclick="gedan()">
                            <div>
                                <img  src="../zll/menubar_mysong.png" title="我点过的歌单">
                                <div>歌单</div>
                            </div>
                        </div>
                        <%--                            歌单--%>


                    </div>


                    <div class="bbbug_main_menu_song_ctrl">
                        <i onclick="another()" title="切歌/不喜欢" class="iconfont icon-xiayige"></i>
                        <i onclick="zanting()" title="暂停" class="iconfont icon-jiazai"></i>
                        <i onclick="yljian()" title="音量减" class="iconfont icon-jian"></i>
                        <i onclick="yljia()" title="音量加" class="iconfont icon-jiahao"></i>

                    </div>
                    <%--                        切歌和调声音--%>


                    <div title="查看歌曲信息" onclick="歌单()" class="bbbug_main_menu_song love">
                        <img id="gzp" src="../zll/1bafe18a648eb26bbdf7f24b6fe53dfc.jpg">

                    </div>
                    <!---->


                    <div class="bbbug_main_menu_setting" onclick="anhei()">
                        <div>
                            <img src="../zll/menubar_setting.png" title="暗黑模式">
                        </div>
                    </div>
                    <%--                        暗黑设置--%>


                </div>
<%--                最左边的一行--%>


                <div  class="bbbug_main_chat">

                    <div class="bbbug_main_chat_header">


                        <div class="bbbug_main_chat_room_info">

                            <span class="bbbug_main_chat_room_name hideWhenPhone">大厅

                            <i title="点歌音乐房" class="iconfont bbbug_main_room_icon icon-changyongtubiao-mianxing-61"></i>
                            </span>

                        </div>
<%--                        最上面--%>

                        <div class="bbbug_main_chat_online">

                            <span title="打开在线用户列表">
                                <i class="iconfont icon-icon_people_fill">
                                </i>
                                <font color="#999"></font>
                            </span>

                        </div>
<%--                        用户人数--%>

                    </div>
                    <%--                最上面的一行 如大厅名字--%>



                    <div onclick="dh()" id="bbbug_main_chat_history" class="bbbug_main_chat_history">

                    </div>



                    <div id="withdraw" class="contextmenu" style="left: 217px; top: 150px; display: none;"><div>
                        撤回消息
                    </div></div>

                    <div  class="bbbug_main_chat_toolbar">

                        <div class="bbbug_main_chat_toolbar_item">

                            <img onclick="bq()" title="发送表情" src="../zll/button_emoji.png" class="bbbug_main_chat_toolbar_emoji">

                            <div class="bbbug_main_chat_toolbar_img">
                                <div tabindex="0" class="el-upload el-upload--text">
                                    <img onclick="picks()" id="pick" title="上传图片" src="../zll/button_image.png">

                                    <input type="file" name="file" class="el-upload__input">
                                </div>

                            </div>
                        </div> <!---->
                    </div> <!---->
<%--                    表情--%>


                    <div  id="bq" hidden="hidden" class="bbbug_main_chat_emojis">
<%--                        <div class="bbbug_main_chat_emojis_search">--%>
<%--                            <div class="bbbug_main_chat_emojis_input el-input el-input-group el-input-group--append el-input--suffix">--%>
<%--                                <!----><input type="text" autocomplete="off" placeholder="输入关键词搜索表情包"--%>
<%--                                              class="el-input__inner"><!----><!---->--%>
<%--                                <div class="el-input-group__append">--%>
<%--                                    <button type="button" class="el-button el-button--default"><!----><i--%>
<%--                                            class="el-icon-search"></i><!----></button>--%>
<%--                                </div><!---->--%>
<%--                            </div>--%>
<%--                        </div>--%>


                        <div style="text-align: left;"><span><div role="tooltip" id="el-popover-4788" aria-hidden="true"
                                                                  class="el-popover el-popper" tabindex="0"
                                                                  style="display: none;"><div class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/1.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/1.png" class="el-popover__reference"
                                aria-describedby="el-popover-4788" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-1438"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/2.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/2.png" class="el-popover__reference"
                                aria-describedby="el-popover-1438" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-2018"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/3.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/3.png" class="el-popover__reference"
                                aria-describedby="el-popover-2018" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-1141"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/4.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/4.png" class="el-popover__reference"
                                aria-describedby="el-popover-1141" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-7470"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/5.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/5.png" class="el-popover__reference"
                                aria-describedby="el-popover-7470" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-627"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/6.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/6.png" class="el-popover__reference"
                                aria-describedby="el-popover-627" tabindex="0"></span><span><div role="tooltip"
                                                                                                 id="el-popover-6514"
                                                                                                 aria-hidden="true"
                                                                                                 class="el-popover el-popper"
                                                                                                 tabindex="0"
                                                                                                 style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/7.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/7.png" class="el-popover__reference"
                                aria-describedby="el-popover-6514" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-7891"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/8.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/8.png" class="el-popover__reference"
                                aria-describedby="el-popover-7891" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-2332"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/9.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/9.png" class="el-popover__reference"
                                aria-describedby="el-popover-2332" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-6716"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/10.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/10.png" class="el-popover__reference"
                                aria-describedby="el-popover-6716" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-4147"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/11.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/11.png" class="el-popover__reference"
                                aria-describedby="el-popover-4147" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-8636"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/12.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/12.png" class="el-popover__reference"
                                aria-describedby="el-popover-8636" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-7286"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/13.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/13.png" class="el-popover__reference"
                                aria-describedby="el-popover-7286" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-9890"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/14.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/14.png" class="el-popover__reference"
                                aria-describedby="el-popover-9890" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-9440"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/15.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/15.png" class="el-popover__reference"
                                aria-describedby="el-popover-9440" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-7851"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/16.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/16.png" class="el-popover__reference"
                                aria-describedby="el-popover-7851" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-7380"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/17.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/17.png" class="el-popover__reference"
                                aria-describedby="el-popover-7380" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-6331"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/18.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/18.png" class="el-popover__reference"
                                aria-describedby="el-popover-6331" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-8288"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/19.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/19.png" class="el-popover__reference"
                                aria-describedby="el-popover-8288" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-1147"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/20.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/20.png" class="el-popover__reference"
                                aria-describedby="el-popover-1147" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-3160"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/21.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/21.png" class="el-popover__reference"
                                aria-describedby="el-popover-3160" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-4035"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/22.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/22.png" class="el-popover__reference"
                                aria-describedby="el-popover-4035" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-5079"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/23.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/23.png" class="el-popover__reference"
                                aria-describedby="el-popover-5079" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-1947"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/24.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/24.png" class="el-popover__reference"
                                aria-describedby="el-popover-1947" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-4503"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/25.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/25.png" class="el-popover__reference"
                                aria-describedby="el-popover-4503" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-8171"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/26.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/26.png" class="el-popover__reference"
                                aria-describedby="el-popover-8171" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-8333"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/27.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/27.png" class="el-popover__reference"
                                aria-describedby="el-popover-8333" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-8072"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/28.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/28.png" class="el-popover__reference"
                                aria-describedby="el-popover-8072" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-1406"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/29.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/29.png" class="el-popover__reference"
                                aria-describedby="el-popover-1406" tabindex="0"></span><span><div role="tooltip"
                                                                                                  id="el-popover-1677"
                                                                                                  aria-hidden="true"
                                                                                                  class="el-popover el-popper"
                                                                                                  tabindex="0"
                                                                                                  style="display: none;"><div
                                class="el-popover__title">预览表情</div><img
                                src="https://api.bbbug.com//new/images/emoji/30.png"
                                style="width: 200px; height: 200px; border-radius: 10px; border: 1px solid rgb(245, 245, 245);"> </div><img
                                src="https://api.bbbug.com//new/images/emoji/30.png" class="el-popover__reference"
                                aria-describedby="el-popover-1677" tabindex="0"></span>
                        </div>
                    </div>
                    <%--表情包--%>

                    <div onclick="inpt()"   class="bbbug_main_chat_input">
                        <div class="bbbug_main_chat_input_toolbar">
                        </div>
                        <div class="bbbug_main_chat_input_form">


                           <textarea id="dialog" placeholder="你准备说点啥??" class="bbug_main_chat_input_message"></textarea>

                            <button id="qqLoginBtn" onclick="dialog2()" class="bbbug_main_chat_input_send bbbug_main_chat_enable">
                                发送(Enter)
                            </button>

                            <div class="bbbug_main_chat_input_lrc">有难过也有精彩</div>
                        </div>
                    </div>

<%--                    输入框--%>


                </div>


                <div  hidden="hidden"  id="歌单" class="bbbug_main_menu_song_box">
                    <img id="turn" src="<%out.print(sy.getHead());%>"
                        class="bbbug_main_menu_song_bg">
                    <div role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
                         class="el-progress el-progress--line el-progress--without-text">
                        <div class="el-progress-bar">
                            <div class="el-progress-bar__outer" style="height: 2px;">
                                <div class="el-progress-bar__inner" style="width: 90%;"><!----></div>
                            </div>
                        </div><!----></div>
                    <div class="bbbug_main_menu_song_title">
                        <marquee scrollamount="3">第三组</marquee>
                    </div>
                    <div class="bbbug_main_menu_song_user">歌手:<font color="orangered">暂无</font></div>
                </div>
                <%--                歌单信息--%>


                <div class="bbbug_frame">


                    <div id="RoomSetting" class="bbbug_frame_box" hidden="hidden">
                        <div class="bbbug_main_right">
                            <div class="bbbug_main_right_room">
                                <div class="bbbug_main_right_room_title">我的个人中心
                                    <div  onclick="grxxbc()" class="bbbug_main_right_song_right">保存</div>
                                </div>
                                <form class="el-form bbbug_my_setting__form">
                                    <div style="text-align: center; margin-bottom: 20px;">
                                        <div>
                                            <div tabindex="0" class="el-upload el-upload--text">

                                                <img onclick="easyUpload()" id="head" src="<%out.print(sy.getHead());%>"
                                                     onerror=""
                                                     style="border-radius: 100%; width: 80px; height: 80px;">
                                            </div>
                                        </div>
                                        <div>邮箱:
                                            <font color="orangered" style="margin-left: 5px; font-weight: bolder;">
                                                <%out.print(sy.getUsername());%></font>
                                        </div>
                                    </div>

<%--                                    <div class="el-form-item">--%>
<%--                                        <label class="el-form-item__label"--%>
<%--                                               style="width: 60px;">链接</label>--%>
<%--                                        <div class="el-form-item__content" style="margin-left: 60px;">--%>
<%--                                            <div class="el-input el-input--medium"><!---->--%>
<%--                                                <input id="baidutouxiang" type="text" autocomplete="off" placeholder="复制百度图片链接选择图片"--%>
<%--                                                       class="el-input__inner">--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

                                    <div class="el-form-item">
                                        <label class="el-form-item__label"
                                               style="width: 60px;">昵称</label>
                                        <div class="el-form-item__content" style="margin-left: 60px;">
                                            <div class="el-input el-input--medium"><!---->
                                                <input id="nickname" type="text" autocomplete="off" placeholder="请输入你的昵称"
                                                       class="el-input__inner">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="el-form-item"><label class="el-form-item__label"
                                                                     style="width: 60px;">签名</label>
                                        <div class="el-form-item__content" style="margin-left: 60px;">
                                            <div class="el-input el-input--medium"><!---->
                                                <input id="signature" type="text" autocomplete="off" placeholder="请输入你的个性签名"
                                                       class="el-input__inner"><!----><!----><!----><!---->
                                            </div><!----></div>
                                    </div>


                                    <div class="el-form-item">
                                        <label class="el-form-item__label" style="width: 60px;">生日</label>
                                        <div class="el-form-item__content" style="margin-left: 60px;">
                                            <div class="el-input el-input--medium"><!---->
                                                <input id="birthday" type="text" autocomplete="off" placeholder="没生日的孤儿？" class="el-input__inner">
                                            </div>
                                        </div>
                                    </div><!--生日-->


                                    <div class="el-form-item">
                                        <label  class="el-form-item__label" style="width: 60px;">性别</label>
                                        <div class="el-form-item__content" style="margin-left: 60px;">
                                            <div class="el-input el-input--medium"><!---->
                                                <input id="sex" type="text" autocomplete="off" placeholder="请输入你的性别" class="el-input__inner">
                                            </div>
                                        </div>
                                    </div><!--性别-->


<%--                                    <div class="el-form-item">--%>
<%--                                        <label class="el-form-item__label" style="width: 60px;">性别</label>--%>
<%--                                        <div class="el-form-item__content" style="margin-left: 60px;">--%>
<%--                                            <div class="el-select allLine el-select--medium" style="margin-left: 0px;">--%>
<%--                                                <!---->--%>

<%--                                                <div id="xbxz" class="el-input el-input--medium el-input--suffix"><!---->--%>
<%--                                                    <input type="text" readonly="readonly" autocomplete="off"--%>
<%--                                                        placeholder="请选择你的性别" class="el-input__inner"><!---->--%>
<%--                                                    <span class="el-input__suffix">--%>
<%--                                                        <span class="el-input__suffix-inner">--%>
<%--                                                            <i id="xbxz2" onclick="xb()" class="el-select__caret el-input__icon el-icon-arrow-up">--%>

<%--                                                            </i></span><!----></span><!---->--%>
<%--                                                    <!----></div>--%>
<%--                                            </div><!----></div>--%>
<%--                                    </div>--%>


                                    <div class="el-form-item"><label class="el-form-item__label"
                                                                     style="width: 60px;">住址</label>
                                        <div class="el-form-item__content" style="margin-left: 60px;">
                                            <div class="el-input el-input--medium">
                                                <input id="address" type="text" autocomplete="off" placeholder="家乡在哪里？？"
                                                       class="el-input__inner">
                                            </div>
                                        </div>
                                    </div>
                                    <%--                                    家庭住址--%>

                                    <div class="el-form-item"><label class="el-form-item__label"
                                                                     style="width: 60px;">手机</label>
                                        <div class="el-form-item__content" style="margin-left: 60px;">
                                            <div class="el-input el-input--medium">
                                                <input id="phone"  type="text" autocomplete="off" placeholder="没联系方式？"
                                                       class="el-input__inner">
                                            </div>
                                        </div>
                                    </div>
                                    <%--                                    手机号--%>

                                    <div class="el-form-item"><label class="el-form-item__label"
                                                                     style="width: 60px;">密码</label>
                                        <div class="el-form-item__content" style="margin-left: 60px;">
                                            <div class="el-input el-input--medium">
                                                <input  id="pwd" type="text" autocomplete="off" placeholder="你的密码,不修改请留空"
                                                        class="el-input__inner">
                                            </div>
                                        </div>
                                    </div>

                                    <%--                                    密码--%>








                                </form>

                                <div class="bbbug_my_setting__clear">
                                    <button onclick="ztc()" class="bbbug_my_setting__clear_button">退出登录</button>
                                </div>

                            </div>
                        </div>
                    </div>
                    <%--                        个人中心--%>


                    <div id="SearchSongs" class="bbbug_frame_box" hidden="hidden">
                        <div class="bbbug_main_right">
                            <div class="bbbug_main_right_song">
                                <div class="bbbug_main_right_song_title">
                                    歌曲搜索
                                    <div aria-haspopup="listbox" role="combobox" aria-owns="el-autocomplete-5908"
                                         class="el-autocomplete" style="margin-top: 20px; display: block;">
                                        <div class="el-input el-input--small el-input-group el-input-group--append el-input--suffix">
                                            <!----><input type="text" autocomplete="off" valuekey="value"
                                                          placeholder="歌名/歌手/专辑搜索"
                                                          fetchsuggestions="function () { [native code] }"
                                                          triggeronfocus="true" debounce="300"
                                                          placement="bottom-start" popperappendtobody="true"
                                                          class="el-input__inner" role="textbox"
                                                          aria-autocomplete="list" aria-controls="id"
                                                          id="sousuo"
                                        <%--                                                          aria-activedescendant="el-autocomplete-5908-item--1"--%>
                                        >
                                            <!----><!---->
                                            <div class="el-input-group__append">
                                                <button onclick="sousuo()" type="button" class="el-button el-button--default"><!----><i
                                                        class="el-icon-search"></i><span>搜索</span></button>
                                            </div><!----></div>
                                        <div role="region" class="el-autocomplete-suggestion el-popper"
                                             style="display: none;">
                                            <div class="el-scrollbar">
                                                <div class="el-autocomplete-suggestion__wrap el-scrollbar__wrap"
                                                     style="margin-bottom: -5px; margin-right: -5px;">
                                                    <ul class="el-scrollbar__view el-autocomplete-suggestion__list"
                                                        role="listbox" id="el-autocomplete-5908"></ul>
                                                </div>
                                                <div class="el-scrollbar__bar is-horizontal">
                                                    <div class="el-scrollbar__thumb"
                                                         style="transform: translateX(0%);"></div>
                                                </div>
                                                <div class="el-scrollbar__bar is-vertical">
                                                    <div class="el-scrollbar__thumb"
                                                         style="transform: translateY(0%);"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="bbbug_main_right_song_list_search">
                                    <div class="bbbug_scroll"></div>
                                    <%--                                    <div class="bbbug_tips">输入精准词可快速搜索</div> <!---->--%>
                                </div>

                                <div class="el-loading-mask" style="display: none;">
                                    <div class="el-loading-spinner">
                                        <svg viewBox="25 25 50 50" class="circular">
                                            <circle cx="50" cy="50" r="20" fill="none" class="path"></circle>
                                        </svg><!---->
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <%--                        点歌--%>



                    <div id="MySongList" class="bbbug_frame_box" hidden="hidden">
                        <div class="bbbug_main_right">
                            <div class="bbbug_main_right_song">
                                <div class="bbbug_main_right_song_title">我点过的歌</div>
                                <div class="bbbug_main_right_song_list">
                                    <div class="bbbug_scroll">

                                    </div> <!----> <!---->
                                    <div class="el-loading-mask" style="display: none;">
                                        <div class="el-loading-spinner">
                                            <svg viewBox="25 25 50 50" class="circular">
                                                <circle cx="50" cy="50" r="20" fill="none" class="path"></circle>
                                            </svg><!----></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--歌单--%>




                </div>
                <%--                    个人信息  歌单  歌  暗黑模式的弹框--%>



                <div class="el-loading-mask" style="display: none;">
                    <div class="el-loading-spinner">
                        <svg viewBox="25 25 50 50" class="circular">
                            <circle cx="50" cy="50" r="20" fill="none" class="path"></circle>
                        </svg><!----></div>
                </div>






        </div>
    </div>

        <div class="bbbug_dark_cover"></div>

</div>

    <div hidden="hidden" id="tui"  tabindex="-1" role="dialog" aria-modal="true" aria-label="退出登录" class="el-message-box__wrapper"
         style="z-index: 2003;">
        <div class="el-message-box">
            <div class="el-message-box__header">
                <div class="el-message-box__title"><!----><span>退出登录</span></div>

                <button  onclick="tuiqx()" type="button" aria-label="Close" class="el-message-box__headerbtn"><i
                        class="el-message-box__close el-icon-close"></i></button>
            </div>
            <div class="el-message-box__content">
                <div class="el-message-box__container">
                    <div class="el-message-box__status el-icon-warning"></div>
                    <div class="el-message-box__message"><p>是否确认退出当前登录的账号?</p></div>
                </div>
                <div class="el-message-box__input" style="display: none;">
                    <div class="el-input"><!----><input type="text" autocomplete="off" placeholder=""
                                                        class="el-input__inner"><!----><!----><!----><!----></div>
                    <div class="el-message-box__errormsg" style="visibility: hidden;"></div>
                </div>
            </div>
            <div class="el-message-box__btns">
                <button onclick="tuiqx()" type="button" class="el-button el-button--default el-button--small"><!----><!----><span>
          取消
        </span>
                </button>
                <button type="button" onclick="tuitc()" class="el-button el-button--default el-button--small el-button--primary "><!---->
                    <!----><span>
          退出
        </span></button>
            </div>
        </div>
    </div>
<%--退出登录页面--%>
    <script type="text/javascript" >
        $(function () {
            $.ajax({
                type: "POST",
                url: "/insertspaus",
                dataType: "json",
                data: {
                    nickname:nicknames,//昵称
                    spaus:'2',
                }
            });

            document.querySelector("#bbbug_main_chat_history").scrollTop=99999999;
        });

    </script>

    <script type="text/javascript" >

        var allcount=0;

        function chat_history(){

            document.querySelector("#歌单 > div.el-progress.el-progress--line.el-progress--without-text > div > div > div").setAttribute("style","width: 音量%;")

            getqu();
            var len;
            $.ajax({
                type:"POST",
                url:"/textlo",
                dataType: "json",
                data: {
                }, success:function (data){
                    var ds = data.data;
                     len=ds.length;
                    for(var i=allcount;i<len;allcount++,i++){
                        console.log(ds[i]);
                        changeImg(ds[i]);
                        document.querySelector("#bbbug_main_chat_history").scrollTop=99999999;
                    }
                }
            });
            // sleep(500)
        }

             setInterval("chat_history()",1000)
    </script>
    <%--    自动刷新对话信息--%>


    <script>
        $("html").keydown(function (event) {
            if (event.keyCode == 13) {
                dialog2();
            }
        });
        //监听按钮  键盘回车后


    </script>
<%--    自动刷新对话信息--%>



    <script>
        document.querySelector("#dialog").addEventListener('paste', function(e){
            var clipboard = e.clipboardData;
            var type = clipboard.items[0].type;
            if (type.match(/image/)) {
                var blob = clipboard.items[0].getAsFile();
                var file = new FileReader();
                file.addEventListener('loadend', function(e){
                    $.ajax({
                        type:"POST",
                        url:"/insertdh",
                        dataType:"JSON",
                        data:{
                            text:e.target.result,//获取文本
                            head:heads,//获取头像
                            nickname:nicknames,//获取昵称
                            email:emails,//获取邮箱
                            seate:0,//状态
                            // times:console.log(Date.parse(new Date())),
                        },success: function (data) {

                            if (data.ret == 1) {

                            } else {
                                swal('出错了', '出现了bug', 'error');
                            }

                        }
                    })
                });
                file.readAsDataURL(blob);
            } else {

            }
        });
    </script>


    <script>
        // 来源：http://www.zhihu.com/question/31259853
        // document.querySelector("#bq > div:nth-child(2) > span:nth-child(30) > img")
        // document.querySelector("#bq > div:nth-child(2) > span:nth-child(21) > img")
        // document.querySelector("#bq > div:nth-child(2) > span:nth-child(2) > img")
        for (var i=1;i<=30;i++){
            document.querySelector("#bq > div:nth-child(1) > span:nth-child("+i+") > img").onclick=function () {
                var src=this.src;
                $.ajax({
                    type:"POST",
                    url:"/insertdh",
                    dataType:"JSON",
                    data:{
                        text:src,//获取文本
                        head:heads,//获取头像
                        nickname:nicknames,//获取昵称
                        email:emails,//获取邮箱
                        seate:0,//状态
                        // times:console.log(Date.parse(new Date())),
                    },success: function (data) {

                        if (data.ret == 1) {

                        } else {
                            swal('出错了', '出现了bug', 'error');
                        }

                    }
                })
            }
        }

    </script>


    <script>
    var emails='<%out.print(sy.getUsername());%>';
    var nicknames='<%if(sy.getNickname()!=null)out.print(sy.getNickname());%>';
    var pwds='<%if(sy.getPwd()!=null)out.print(sy.getPwd());%>';
    var heads='<%if(sy.getHead()!=null)out.print(sy.getHead());%>';
    var birthdays='<%if(sy.getBirthday()!=null)out.print(sy.getBirthday());%>';
    var sexs='<%if(sy.getSex()!=null)out.print(sy.getSex());%>';
    var addresss='<%if(sy.getAddress()!=null)out.print(sy.getAddress());%>';
    var phones='<%if(sy.getPhone()!=null)out.print(sy.getPhone());%>';
    var signatures='<%if(sy.getSignature()!=null)out.print(sy.getSignature());%>';
    document.querySelector("#music").onended=function(){console.log('asd');
    music();
    }

    </script>


    <script type="text/javascript" charset="utf-8" src="../js/L2Dwidget.0.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/L2Dwidget.min.js"></script>
    <script type="text/javascript">
        L2Dwidget.init({
            "display": {
                "superSample": 2,
                "width": 200,
                "height": 400,
                "position": "right",
                "hOffset": 0,
                "vOffset": 0
            }
        });

    </script>
    <%--画板娘--%>
</div>





</body>
</html>







