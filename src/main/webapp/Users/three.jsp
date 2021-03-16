<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/15
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%--开发人个人信息--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><style type="text/css">.tippy-popper[x-placement^=top] .tippy-popper[x-placement^=top].tippy-popper[x-placement^=top] .tippy-roundarrow svg{position:absolute;left:0;-webkit-transform:rotate(180deg);transform:rotate(180deg)}.tippy-popper[x-placement^=top] .tippy-popper[x-placement^=top] .tippy-popper[x-placement^=top] .tippy-popper[x-placement^=top].tippy-popper[x-placement^=top] [data-animation=shift-toward][data-state=visible]{-webkit-transform:translateY(-10px);transform:translateY(-10px)}.tippy-popper[x-placement^=top] [data-animation=shift-toward][data-state=hidden]{opacity:0;-webkit-transform:translateY(-20px);transform:translateY(-20px)}.tippy-popper[x-placement^=top] [data-animation=perspective]{-webkit-transform-origin:bottom;transform-origin:bottom}.tippy-popper[x-placement^=top] [data-animation=perspective][data-state=visible]{-webkit-transform:perspective(700px) translateY(-10px) rotateX(0);transform:perspective(700px) translateY(-10px) rotateX(0)}.tippy-popper[x-placement^=top] [data-animation=perspective][data-state=hidden]{opacity:0;-webkit-transform:perspective(700px) translateY(0) rotateX(60deg);transform:perspective(700px) translateY(0) rotateX(60deg)}.tippy-popper[x-placement^=top] [data-animation=fade][data-state=visible]{-webkit-transform:translateY(-10px);transform:translateY(-10px)}.tippy-popper[x-placement^=top] [data-animation=fade][data-state=hidden]{opacity:0;-webkit-transform:translateY(-10px);transform:translateY(-10px)}.tippy-popper[x-placement^=top] [data-animation=shift-away][data-state=visible]{-webkit-transform:translateY(-10px);transform:translateY(-10px)}.tippy-popper[x-placement^=top] [data-animation=shift-away][data-state=hidden]{opacity:0;-webkit-transform:translateY(0);transform:translateY(0)}.tippy-popper[x-placement^=top] [data-animation=scale]{-webkit-transform-origin:bottom;transform-origin:bottom}.tippy-popper[x-placement^=top] [data-animation=scale][data-state=visible]{-webkit-transform:translateY(-10px) scale(1);transform:translateY(-10px) scale(1)}.tippy-popper[x-placement^=top] [data-animation=scale][data-state=hidden]{opacity:0;-webkit-transform:translateY(-10px) scale(.5);transform:translateY(-10px) scale(.5)}.tippy-popper[x-placement^=bottom] .tippy-popper[x-placement^=bottom] .tippy-popper[x-placement^=bottom] .tippy-roundarrow svg{position:absolute;left:0;-webkit-transform:rotate(0);transform:rotate(0)}.tippy-popper[x-placement^=bottom].tippy-popper[x-placement^=bottom] .tippy-popper[x-placement^=bottom] .tippy-popper[x-placement^=bottom] .tippy-popper[x-placement^=bottom] [data-animation=shift-toward][data-state=visible]{-webkit-transform:translateY(10px);transform:translateY(10px)}.tippy-popper[x-placement^=bottom] [data-animation=shift-toward][data-state=hidden]{opacity:0;-webkit-transform:translateY(20px);transform:translateY(20px)}.tippy-popper[x-placement^=bottom] [data-animation=perspective]{-webkit-transform-origin:top;transform-origin:top}.tippy-popper[x-placement^=bottom] [data-animation=perspective][data-state=visible]{-webkit-transform:perspective(700px) translateY(10px) rotateX(0);transform:perspective(700px) translateY(10px) rotateX(0)}.tippy-popper[x-placement^=bottom] [data-animation=perspective][data-state=hidden]{opacity:0;-webkit-transform:perspective(700px) translateY(0) rotateX(-60deg);transform:perspective(700px) translateY(0) rotateX(-60deg)}.tippy-popper[x-placement^=bottom] [data-animation=fade][data-state=visible]{-webkit-transform:translateY(10px);transform:translateY(10px)}.tippy-popper[x-placement^=bottom] [data-animation=fade][data-state=hidden]{opacity:0;-webkit-transform:translateY(10px);transform:translateY(10px)}.tippy-popper[x-placement^=bottom] [data-animation=shift-away][data-state=visible]{-webkit-transform:translateY(10px);transform:translateY(10px)}.tippy-popper[x-placement^=bottom] [data-animation=shift-away][data-state=hidden]{opacity:0;-webkit-transform:translateY(0);transform:translateY(0)}.tippy-popper[x-placement^=bottom] [data-animation=scale]{-webkit-transform-origin:top;transform-origin:top}.tippy-popper[x-placement^=bottom] [data-animation=scale][data-state=visible]{-webkit-transform:translateY(10px) scale(1);transform:translateY(10px) scale(1)}.tippy-popper[x-placement^=bottom] [data-animation=scale][data-state=hidden]{opacity:0;-webkit-transform:translateY(10px) scale(.5);transform:translateY(10px) scale(.5)}.tippy-popper[x-placement^=left] .tippy-popper[x-placement^=left] .tippy-popper[x-placement^=left] .tippy-roundarrow svg{position:absolute;left:0;-webkit-transform:rotate(90deg);transform:rotate(90deg)}.tippy-popper[x-placement^=left].tippy-popper[x-placement^=left] .tippy-popper[x-placement^=left] .tippy-popper[x-placement^=left] .tippy-popper[x-placement^=left] [data-animation=shift-toward][data-state=visible]{-webkit-transform:translateX(-10px);transform:translateX(-10px)}.tippy-popper[x-placement^=left] [data-animation=shift-toward][data-state=hidden]{opacity:0;-webkit-transform:translateX(-20px);transform:translateX(-20px)}.tippy-popper[x-placement^=left] [data-animation=perspective]{-webkit-transform-origin:right;transform-origin:right}.tippy-popper[x-placement^=left] [data-animation=perspective][data-state=visible]{-webkit-transform:perspective(700px) translateX(-10px) rotateY(0);transform:perspective(700px) translateX(-10px) rotateY(0)}.tippy-popper[x-placement^=left] [data-animation=perspective][data-state=hidden]{opacity:0;-webkit-transform:perspective(700px) translateX(0) rotateY(-60deg);transform:perspective(700px) translateX(0) rotateY(-60deg)}.tippy-popper[x-placement^=left] [data-animation=fade][data-state=visible]{-webkit-transform:translateX(-10px);transform:translateX(-10px)}.tippy-popper[x-placement^=left] [data-animation=fade][data-state=hidden]{opacity:0;-webkit-transform:translateX(-10px);transform:translateX(-10px)}.tippy-popper[x-placement^=left] [data-animation=shift-away][data-state=visible]{-webkit-transform:translateX(-10px);transform:translateX(-10px)}.tippy-popper[x-placement^=left] [data-animation=shift-away][data-state=hidden]{opacity:0;-webkit-transform:translateX(0);transform:translateX(0)}.tippy-popper[x-placement^=left] [data-animation=scale]{-webkit-transform-origin:right;transform-origin:right}.tippy-popper[x-placement^=left] [data-animation=scale][data-state=visible]{-webkit-transform:translateX(-10px) scale(1);transform:translateX(-10px) scale(1)}.tippy-popper[x-placement^=left] [data-animation=scale][data-state=hidden]{opacity:0;-webkit-transform:translateX(-10px) scale(.5);transform:translateX(-10px) scale(.5)}.tippy-popper[x-placement^=right] .tippy-popper[x-placement^=right] .tippy-popper[x-placement^=right] .tippy-roundarrow svg{position:absolute;left:0;-webkit-transform:rotate(-90deg);transform:rotate(-90deg)}.tippy-popper[x-placement^=right] .tippy-popper[x-placement^=right] .tippy-popper[x-placement^=right] .tippy-popper[x-placement^=right] .tippy-popper[x-placement^=right] [data-animation=shift-toward][data-state=visible]{-webkit-transform:translateX(10px);transform:translateX(10px)}.tippy-popper[x-placement^=right] [data-animation=shift-toward][data-state=hidden]{opacity:0;-webkit-transform:translateX(20px);transform:translateX(20px)}.tippy-popper[x-placement^=right] [data-animation=perspective]{-webkit-transform-origin:left;transform-origin:left}.tippy-popper[x-placement^=right] [data-animation=perspective][data-state=visible]{-webkit-transform:perspective(700px) translateX(10px) rotateY(0);transform:perspective(700px) translateX(10px) rotateY(0)}.tippy-popper[x-placement^=right] [data-animation=perspective][data-state=hidden]{opacity:0;-webkit-transform:perspective(700px) translateX(0) rotateY(60deg);transform:perspective(700px) translateX(0) rotateY(60deg)}.tippy-popper[x-placement^=right] [data-animation=fade][data-state=visible]{-webkit-transform:translateX(10px);transform:translateX(10px)}.tippy-popper[x-placement^=right] [data-animation=fade][data-state=hidden]{opacity:0;-webkit-transform:translateX(10px);transform:translateX(10px)}.tippy-popper[x-placement^=right] [data-animation=shift-away][data-state=visible]{-webkit-transform:translateX(10px);transform:translateX(10px)}.tippy-popper[x-placement^=right] [data-animation=shift-away][data-state=hidden]{opacity:0;-webkit-transform:translateX(0);transform:translateX(0)}.tippy-popper[x-placement^=right] [data-animation=scale]{-webkit-transform-origin:left;transform-origin:left}.tippy-popper[x-placement^=right] [data-animation=scale][data-state=visible]{-webkit-transform:translateX(10px) scale(1);transform:translateX(10px) scale(1)}</style>
    <title>成员  --  中乐乐音乐聊天室</title>

    <link href="https://assets.gitee.com/assets/favicon-9007bd527d8a7851c8330e783151df58.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">

    <meta charset="utf-8">
    <meta content="always" name="referrer">
    <meta content="Gitee" property="og:site_name">
    <meta content="Object" property="og:type">
    <meta content="/members/list" property="og:url">

    <meta content="https://gitee.com/static/images/logo_themecolor.png" itemprop="image" property="og:image">

    <meta content="成员 -- 中乐乐项目小组成员 " itemprop="name" property="og:title">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="authenticity_token" name="csrf-param">
    <meta content="V5o5nwwQ71BxRuv0jZA8OLaI5z7a43ujzveBL6xckEY=" name="csrf-token">
    <link href="../css/three/application-2415642452ba27a785689d1ed495bfed.css" media="all" rel="stylesheet">
    <script charset="utf-8" src="https://hmcdn.baidu.com/static/tongji/plugins/UrlChangeTracker.js"></script><script src="https://hm.baidu.com/hm.js?24f17767262929947cc3631f99bfd274"></script>
    <script async="" src="../js/there/sensorsdata.min.js" charset="UTF-8"></script><script>
        //<![CDATA[
        window.gon = {};gon.locale="zh-CN";gon.sentry_dsn=null;gon.baidu_register_hm_push=null;gon.sensor={"server_url":"https://haveaniceday.gitee.com:3443/sa?project=production"};gon.info={"controller_path":"groups/members","action_name":"list","current_user":false};gon.tour_env={"current_user":null,"action_name":"list","original_url":"http://gitee.com/organizations/bbbug_com/members/list","controller_path":"groups/members"};gon.enterprise_id=0;
        //]]>
    </script>
    <script src="../js/there/sensor-a8642a734004a5ebe37533e9cd7bc4a4.js"></script>
    <script src="../js/there/sentry-5.1.0-109ee3d8895a239331efcf947ba7f5d8.js"></script>
    <script src="../js/there/application-053b7ffed8801231c1c8420188b0cea6.js"></script>
    <script type="text/x-mathjax-config;executed=true">
    </script>
    <script src="https://assets.gitee.com/uploads/resources/MathJax-2.7.2/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
    <script>
        var userAgent = navigator.userAgent;
        var isLessIE11 = userAgent.indexOf('compatible') > -1 && userAgent.indexOf('MSIE') > -1;
        if(isLessIE11){
            var can_access = "";
            if (can_access != "true"){
                window.location.href = "/incompatible.html";
            }
        }
    </script>
    <script src="https://assets.gitee.com/assets/groups/app-f46a94473f488d88b14eb83144580237.js"></script><style type="text/css">
        .MathJax_Menu_Button .MathJax_Hover_Arrow span {display: block; background-color: #AAA; border: 1px solid; border-radius: 3px; line-height: 0; padding: 4px}
        .MathJax_Hover_Arrow:hover span {background-color: #CCC!important}
    </style><style type="text/css">.MathJax_MenuClose span {display: block; background-color: #AAA; border: 1.5px solid; border-radius: 18px; -webkit-border-radius: 18px; -moz-border-radius: 18px; -khtml-border-radius: 18px; line-height: 0; padding: 8px 0 6px}
    .MathJax_MenuClose:hover span {background-color: #CCC!important}
    </style><style type="text/css">
        #MathJax_Message {position: fixed; left: 1em; bottom: 1.5em; background-color: #E6E6E6; border: 1px solid #959595; margin: 0px; padding: 2px 8px; z-index: 102; color: black; font-size: 80%; width: auto; white-space: nowrap}
    </style><link rel="stylesheet" href="../css/three/share_style1_32.css"><style type="text/css">
        .MJXp-math span {display: inline-block}
        .MJXp-denom > * {display: table-row!important}
        .MJXp-surd > * {display: block!important}
        .MJXp-script-box > *  {display: table!important; height: 50%}
        .MJXp-script-box > * > * {display: table-cell!important; vertical-align: top}
        .MJXp-script-box > *:last-child > * {vertical-align: bottom}
        .MJXp-script-box > * > * > * {display: block!important}
        .MJXp-over > * {display: block!important}
        .MJXp-munderover > * {display: table-row!important}
        .MJXp-mtable > * {display: inline-table!important; vertical-align: middle}
    </style></head>
<body class="git-group ui_basic large webkit" id="members-list" style=""><div id="MathJax_Message" style="display: none;"></div>
<header class="common-header fixed noborder" id="git-header-nav">
    <div class="ui container">
        <div class="ui menu header-menu">
            <div class="git-nav-expand-bar">
                <i class="iconfont icon-mode-table"></i>
            </div>
            <%--<div class="item gitosc-logo">
                </div>
            <a class="item " href="/explore" title="开源软件">
            </a><a class="item " href="/enterprises" title="企业版">
        </a><a class="item " href="/education" title="高校版">
        </a><a class="item" href="https://blog.gitee.com/" id="gitee-blog" target="_blank" title="博客">
        </a><div class="center responsive-logo">
            </div>--%>
        </div>
    </div>
</header>
<div class="fixed-notice-infos">
    <div class="ui container">
        <div class="flash-messages" id="messages-container"></div>
    </div>
</div>
<div class="site-content">
    <div class="git-group-header">
        <div class="ui container">
            <div class="git-group-header-content">
                <div class="git-group-avatar git-avatar-container">
                    <a ><img alt="5398788 bbbug com 1578992772" class="avatar current-group-avatar" src="https://portrait.gitee.com/uploads/avatars/namespace/1799/5398788_bbbug_com_1578992772.png!avatar100">
                    </a><div class="clearfix"></div>
                </div>
                <div class="git-group-info-wrapper">
                    <div class="git-group-info">
                        <div class="content">
                            <div class="group-title"><h2 class="group-name">
                                <a class="color-unset">中乐乐音乐聊天室成员</a><div class="d-inline-block ml-1">
                                <div class="d-flex-center">
                                </div>
                            </div>
                            </h2></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="group-nav">
                <a class="item active" ><i class="iconfont icon-member"></i>
                    <span>
成员
</span>
                    <span class="ui mini circular label">
7
</span>
                </a>
            </div>
        </div>
    </div>
    <div class="ui container" id="git-group-container">
        <div id="git-group-content">
            <div class="ui three cards" id="group-membbers-list">
                <div class="ui card fluid member-list-card-item">
                    <div class="content">
                        <div class="header" data-username="hamm">
                            <a ><img alt="145025 hamm 1607939120" class="ui avatar image js-popover-card" src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1557699874,2426491476&fm=26&gp=0.jpg!avatar60">
                            </a><div class="content right-part">
                            <a class="username js-popover-card" href="/hamm">张蛟龙</a>
                            <span class="ui label mini basic owner">
组织负责人
</span>
                            <div class="join-time">
                                <a ><i ></i>
                                    人活着是一种心情，<br>
                                    穷也好，富也好，得也好，失也好，一切都是过眼云烟，<br>
                                    只要心情好，一切都好。<br>
                                </a></div>
                        </div>
                        </div>
                    </div>
                    <div class="extra content">
                        <div class="git-user-infodata">
                            <div class="ui center aligned grid">
                                <div class="four column row">
                                    <div class="column">
                                        <a ><div class="follow-num followers-num">
                                            259
                                        </div>
                                            <span class="follow-txt">
网页版主力
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            17
                                        </div>
                                            <span class="follow-txt">
Following
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            21
                                        </div>
                                            <span class="follow-txt">
Watches
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            43
                                        </div>
                                            <span class="follow-txt">
Stars
</span>
                                        </a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="ui card fluid member-list-card-item">
                    <div class="content">
                        <div class="header" data-username="isnoob">
                            <a ><img alt="5227117 xieluojing 1590562709" class="ui avatar image js-popover-card" src="https://portrait.gitee.com/uploads/avatars/user/1742/5227117_xieluojing_1590562709.png!avatar60">
                            </a><div class="content right-part">
                            <a class="username js-popover-card" >高子翔</a>
                            <span class="ui label mini basic ordinary">
开发者
</span>
                            <div class="join-time">
                                <a ><i ></i>
                                    要问啪鸭哪里好 啪鸭屁股是块宝<br>
                                    Tony老师是bug<br>
                                    实在不行就给他扬了<br>
                                </a></div>
                        </div>
                        </div>
                    </div>
                    <div class="extra content">
                        <div class="git-user-infodata">
                            <div class="ui center aligned grid">
                                <div class="four column row">
                                    <div class="column">
                                        <a ><div class="follow-num followers-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Followers
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            2
                                        </div>
                                            <span class="follow-txt">
Following
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            8
                                        </div>
                                            <span class="follow-txt">
Watches
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            4
                                        </div>
                                            <span class="follow-txt">
Stars
</span>
                                        </a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="ui card fluid member-list-card-item">
                    <div class="content">
                        <div class="header" data-username="kiripa">
                            <a ><img alt="1608364 kiripa 1604579832" class="ui avatar image js-popover-card" src="https://portrait.gitee.com/uploads/avatars/user/536/1608364_kiripa_1604579832.png!avatar60">
                            </a><div class="content right-part">
                            <a class="username js-popover-card">安鹏程</a>
                            <span class="ui label mini basic ordinary">
开发者
</span>
                            <div class="join-time">
                                <a ><i ></i>
                                    现在是晚上二十五点半，这里不是马思唯，这里是毛纪，<br>
                                    我叫毛纪，我是傻逼，<br>
                                    我爱玩穿越火线，我最喜欢吹牛逼，别人都叫我毛牛逼<br>
                                </a></div>
                        </div>
                        </div>
                    </div>
                    <div class="extra content">
                        <div class="git-user-infodata">
                            <div class="ui center aligned grid">
                                <div class="four column row">
                                    <div class="column">
                                        <a ><div class="follow-num followers-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Followers
</span>
                                        </a></div>
                                    <div class="column">
                                        <a><div class="follow-num">
                                            1
                                        </div>
                                            <span class="follow-txt">
Following
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            2
                                        </div>
                                            <span class="follow-txt">
Watches
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Stars
</span>
                                        </a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="ui card fluid member-list-card-item">
                    <div class="content">
                        <div class="header" data-username="syncmr">
                            <a ><img alt="1980178 syncmr 1578963589" class="ui avatar image js-popover-card" src="https://portrait.gitee.com/uploads/avatars/user/660/1980178_syncmr_1578963589.png!avatar60">
                            </a><div class="content right-part">
                            <a class="username js-popover-card" >毛纪</a>
                            <span class="ui label mini basic ordinary">
开发者
</span>
                            <div class="join-time">
                                <a ><i ></i>
                                    我叫毛纪，专职是辅助，<br>
                                    喜欢1级挨揍，2级补兵，3级偷车，6级空大<br>
                                </a></div>
                        </div>
                        </div>
                    </div>
                    <div class="extra content">
                        <div class="git-user-infodata">
                            <div class="ui center aligned grid">
                                <div class="four column row">
                                    <div class="column">
                                        <a ><div class="follow-num followers-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Followers
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            5
                                        </div>
                                            <span class="follow-txt">
Following
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            8
                                        </div>
                                            <span class="follow-txt">
Watches
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            14
                                        </div>
                                            <span class="follow-txt">
Stars
</span>
                                        </a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="ui card fluid member-list-card-item">
                    <div class="content">
                        <div class="header" data-username="CEW_EricZhang">
                            <a ><img alt="1845540 cew ericzhang 1589878836" class="ui avatar image js-popover-card" src="https://portrait.gitee.com/uploads/avatars/user/615/1845540_CEW_EricZhang_1589878836.png!avatar60">
                            </a><div class="content right-part">
                            <a class="username js-popover-card" >易成龙</a>
                            <span class="ui label mini basic ordinary">
开发者
</span>
                            <div class="join-time">
                                <a ><i ></i>
                                    <span>但行好事，莫问前程，追随本心，无问东西<br>
                                        青蛙会变成王子，而你也会变得出类拔萃<br>
</span>
                                </a></div>
                        </div>
                        </div>
                    </div>
                    <div class="extra content">
                        <div class="git-user-infodata">
                            <div class="ui center aligned grid">
                                <div class="four column row">
                                    <div class="column">
                                        <a ><div class="follow-num followers-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Followers
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            3
                                        </div>
                                            <span class="follow-txt">
Following
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            1
                                        </div>
                                            <span class="follow-txt">
Watches
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Stars
</span>
                                        </a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="ui card fluid member-list-card-item">
                    <div class="content">
                        <div class="header" data-username="rogerliao1992">
                            <a ><img class="ui avatar image js-popover-card" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEsAAABLCAYAAAA4TnrqAAADqElEQVR4Xu3YXUhTYRgH8P+cJmrTWmKpYA6zLPugi4JJ2YVBBBIMSi+qmz4N1OybUqlwCiUakYE3RVBQQmRCdlGYlhf2HVnCVDJK8aullqhMc4t32slE2x7nznbg2aX8zzzvb//nnPccVY0+3gb+OCWgYiynnOwhxnLeirEIVozFWBQBQpavWYxFECBEuVmMRRAgRLlZjEUQIES5WYxFECBEuVmMRRAgRLlZjEUQIES5WYxFECBEuVmMRRAgRLlZjEUQIERla1b0/nRE7doLlZ8f4fTGolaLBaNDgxhq/YJvNY/RUXEXo4MD5O9x9QBFYP2zSJsNQ21f0VJSBHPtE1fXTzpeeVjjy7N0d6Hpwjn01NWSFuxK2GNYva+foz5zn8Nz1yxfCa1+I8I2b0XgYh2gUknH/Kh/hw9H02QbSa/HmqgZl1uAsC3JUPn42P8srmMtV4vRfu+OQ/TZCCgKSx0YhFXFpQhZvXZs7TYbOivvo7EgdzYsHH6HorDEamIyjiMyZTdUarV9cc6Os0MJJwKKw5q8BWGs//zKsceyEWFIBcavW4w1DVZAVDTi8y8hKCZ2fLdqRXt5GZqL8p0YItcjihlDcXFflmNEaGKSdDcc7vmOxvwc2fZaXo0lgLTrEzBvnR4LEhLhH7ZQ2mfZrFZ0PayQ7U4oeukxLFeGQkCZn1Wh0Zgj24ZUeVg2G8TotZXdROuta654z+hYr2+WaJF4cB5oNsFcW43uR5UzWuhsHOQxrOlu+eI5MHzbdmj1G+Azx9++RuuwBebqx2gqzJN17CYDex3WnxOMMKRAd/AwfINDpEebvrcvYco7A/HGwRMfr8USGHawQ0fgO1cjgYlGNpzO8kjDvBpLCE1+0yCuYR0ybkQnNtjrscRea03JdWji4qXz/tX/E5+uFKLzQbms0+j1WEIjdFMSlp48C7/5Wgmn39SA9+l7ZB1HRWAJIfEAHW5IlR51PDGOisGaahxHenvQdPE8zE+rZBlHxWAJjUXJBsRknICvJljC6XvzAh9PZcoyjorCmvLuODKC1ts38Ln0stvbpTisQF0MVhiLEKRbIuFYujphMmZDtMydH8VhCYzIHTuhS8uCOiDg72b1VR3qsw6400q+VzRuXYVMXy5bs2Raj1v/DWMReBmLsQgChCg3i7EIAoQoN4uxCAKEKDeLsQgChCg3i7EIAoQoN4uxCAKEKDeLsQgChCg3i7EIAoQoN4uxCAKEKDeLsQgChCg3i4D1G43jIqt6G+9gAAAAAElFTkSuQmCC" alt="RogerL-rogerliao1992">
                            </a><div class="content right-part">
                            <a class="username js-popover-card">刘恩</a>
                            <span class="ui label mini basic ordinary">
开发者
</span>
                            <div class="join-time">
                                <a ><i ></i>
                                    <span>毛鸡毛，社会毛，精通各种花手，社会摇，<br>
                                        曾被五个社会大哥围住了，但他丝毫不慌~<br>
                                        因为他吃了脑残金口服液~直接花手起飞~<br>
                                    </span>
                                </a></div>
                        </div>
                        </div>
                    </div>
                    <div class="extra content">
                        <div class="git-user-infodata">
                            <div class="ui center aligned grid">
                                <div class="four column row">
                                    <div class="column">
                                        <a ><div class="follow-num followers-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Followers
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            1
                                        </div>
                                            <span class="follow-txt">
Following
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Watches
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Stars
</span>
                                        </a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="ui card fluid member-list-card-item">
                    <div class="content">
                        <div class="header" data-username="lovelyz">
                            <a ><img class="ui avatar image js-popover-card" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEsAAABLCAYAAAA4TnrqAAAEoklEQVR4Xu2ae0wUVxTGvwVUHmqailKLIihQtGppQhuLRlOfgRpJmqhoKlYeSlEQautWVoNNhApifJAg0jbU2qbBByY1otUEJE2A1Gq0GtSgrgr4AAWsqY+4sOZe2c1SHjuHzCCu5/45882de3/znTP33BldSFiUGdwUEdAxLEWcpIhhKWfFsAisGBbDohAgaDlnMSwCAYKUncWwCAQIUnYWwyIQIEjZWQyLQIAgZWcxLAIBgpSdxbAIBAhSdhbDIhAgSHvVWfNmT0VM5Dz8+ddZ5O45gEePnxCG+vKlvQbLz8cb6fovEOA3EmazGddrb+O7nJ9Qd6cBwe8GwsXZWVUara2tuHztJow361Trt1dgubu5Ysv6JHwQPA46nQ5iIkdLK7Bxaz7Cp0+GfmUUhEbN9sxkwp79R7B7b5Fq3fYKrI1rliPs44/g5OQkXXXqbBW+3rRThiHDsnmWhtXR+GTGZPRzcZFHq401MGTusobHlA/fQ3RkBFwH9LfrgMEDPeA19E2pa3rwEPcam7u8xtTSgt//KMOBIyV2+1Uq0NRZaV/GSUc5t+Wj+nuNSN9ZgPK//1E6vna69aujETFnmjwm3JmQmtmjfnp6kSawRP5J1ycgNGSCDD3RGu43I6egEEdLyns6VjgcrAlBY/BV/BKMDfCVyVwtUKIfh4I1e9okJMcuwtAhb1jdI0IvK3cvyirPyGPCdSs++xSVZ86j4vR5ksscCpaP91vINCTC33eEhFBz6y6y835pl6M+XzAXsYsjoIMOJytOY8ePhRBAlTSHgiUmbIFxxViLb7f90G5RKBamm9etxOhR3m3h2YS07HycOlelhJVjhaElzMKnh6K4pLxDObMhOQZzZ06RSd9kakHh4RPY/v1vikA5XM7qbtYin+kTojB4kIeUXaw2Iv6bzVagYoXvPXwYulsfOVwYdgZM5DIRfgGjfeTpfx/+h8zcn3G8rNIq35eXARGm3ZUprwUs23JH1IUHi0vkG9K2MSwAkRGzkLB0PtxcB0g256qqkbQhu0M+o8IS/RQVl3YZ+Q33mxS/OJQmTU1W8Jabh4ZMhCFpGYZ5vqjnugsxKix7E9SiHNIMlu3+lWViDKuTRyxBrY2Hv99Ia8mjtrPs7TpcuHQVGTkF9gxIOq+6swSodauWyt1PS22ohbO0CDN75FSFJUClpcRiXKCfBCU2+i5fvQGxdBA1oZph+ErDEoDSUuKspYwAdcVYg4PFpUiKWciw/m/b/KxUvD/+HekoAcqQlYex/r7WPXZ2lg2xzopo2z12hmUDS+Qmsd8uQs+y7cKw7L02bM4zLIZFIECQsrMYFoEAQcrOYlgEAgRpV85KTVyG8UFjrD297eUJD3c3tJrNuHWnAY+fPO1wF8rne3Fx3e16+U+FWk3V2rCzQXUFKzdDL/+q0bKJ340WxKeqdguGRUD50mARxthnpJrDEp/AUuIWvdh1eGbCr4eOoaDwcJ8BQBmI5rAog+nrWoZFeEIMi2ERCBCk7CyGRSBAkLKzGBaBAEHKzmJYBAIEKTuLYREIEKTsLIZFIECQsrMYFoEAQcrOYlgEAgQpO4sA6zk7W7hXZJ+trwAAAABJRU5ErkJggg==" alt="征-lovelyz">
                            </a><div class="content right-part">
                            <a class="username js-popover-card" >孟紫茵</a>
                            <span class="ui label mini basic ordinary">
开发者
</span>
                            <div class="join-time">
                                <a ><i ></i>
                                    来玩守望先锋吗<br>
                                    奶不到是C的锅<br>
                                </a></div>
                        </div>
                        </div>
                    </div>
                    <div class="extra content">
                        <div class="git-user-infodata">
                            <div class="ui center aligned grid">
                                <div class="four column row">
                                    <div class="column">
                                        <a ><div class="follow-num followers-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Followers
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            3
                                        </div>
                                            <span class="follow-txt">
Following
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            3
                                        </div>
                                            <span class="follow-txt">
Watches
</span>
                                        </a></div>
                                    <div class="column">
                                        <a ><div class="follow-num">
                                            0
                                        </div>
                                            <span class="follow-txt">
Stars
</span>
                                        </a></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="ui grid page">
                <div class="column center aligned" id="project-paginate">
                </div>
            </footer>
        </div>
    </div>
</div>
<script src="../js/there/share.js"></script>
</body>
</html>
