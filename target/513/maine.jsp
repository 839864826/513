<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name='keywords' content='音乐聊天室,一起听歌,程序员,佛系聊天,交友水群,程序猿,斗图,表情包,互联网'>
    <meta name='description' content="BBBUG.COM，一个音乐聊天室，超多小哥哥小姐姐都在这里一起听歌聊天、技术分享、表情包斗图，欢迎你的加入！">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-title" content="BBBUG">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="icon" href="//cdn.bbbug.com/new/favicon.ico">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<%--    <link rel="stylesheet" href="//at.alicdn.com/t/font_666204_xmxgte4zjil.css">--%>
    <link rel="stylesheet" href="css/font_666204_xmxgte4zjil.css">


    <title><%
        if(request.getSession().getAttribute("Nick")==null)
            out.print("游客中");
        else
            out.print(request.getSession().getAttribute("Nick"));%></title>
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

</head>

<body>
<div id="app"></div>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?499e3708baf422896ff8f6c2fc7cfd75";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script type="text/javascript" src="js/js/manifest.js?bf302071ed6a88dd522b"></script>
<script type="text/javascript" src="js/js/vendor.js?3585bd6fb9d772857faa"></script>
<script type="text/javascript" src="js/js/index.js?43877a59ec1732acb100"></script>
</body>

</html>


<script type="text/javascript" charset="utf-8"  src="js/L2Dwidget.0.min.js"></script>
<script type="text/javascript" charset="utf-8"  src="js/L2Dwidget.min.js"></script>
<script type="text/javascript">
    L2Dwidget.init({"display": {
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