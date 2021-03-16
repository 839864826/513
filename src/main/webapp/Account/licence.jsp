<%--
  Created by IntelliJ IDEA.
  User: 83986
  Date: 2020/12/12
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--许可证--%>
<html lang="en"><head>
    <meta charset="UTF-8">

    <link rel="icon" href="//yuanqi-wallpaper.zhhainiao.com/favicon.ico">
    <%--    lougo位置--%>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>STAFF - 中乐乐</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/nes.css@2.2.0/css/nes.min.css">
    <style>
        @import url(https://fonts.googleapis.com/css?family=Press+Start+2P);

        body {
            padding: 0 2rem;
            margin: 0 2rem;
        }

        #nescss>.container {
            max-width: 980px;
            margin: 0 auto;
            margin-top: 150px;
        }

        main p {
            font-size: 1.2rem;
        }

        h2 {
            font-size: 1.6rem;
        }

        /* Header */
        header {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            z-index: 9;
            border-bottom: 4px solid #D3D3D3;
            background-color: white;
        }

        header>.container {
            display: flex;
            align-items: baseline;
            max-width: 980px;
            margin: 0 auto;
            padding-top: 1rem;
            transition: all 0.2s ease;
        }

        header>.container>.nav-brand {
            margin-right: auto;
        }

        .nav-brand .brand-logo {
            margin-right: 1rem;
        }

        .nav-brand>a {
            color: #212529;
            text-decoration: none;
        }

        /* Main */
        .main-content {
            margin-bottom: 4rem;
        }

        /* Footer */
        footer {
            text-align: center;
            margin-bottom: 2rem;
        }

        footer a {
            color: #333;
            text-decoration: none;
        }

        h2>a {
            margin-right: 1rem;
        }

        .topic {
            margin-bottom: 3rem;
            font-family: 'pixel';
        }

        /* Containers */
        .item.containers>.nes-container {
            display: inline-block;
            max-width: 400px;
        }


        /* Topic */
        h3.topic-title {
            display: flex;
            align-items: center;
            margin-bottom: 1rem;
        }

        h3.topic-title>i {
            margin-right: 1.5rem;
        }

        @media screen and (max-width: calc(980px - 4rem)) {
            header>.container {
                margin: 0 4rem;
            }
        }

        @media screen and (max-width: 768px) {
            body {
                margin: 2rem 0.5rem;
                padding: 0;
            }

            header>.container {
                margin: 0 0.5rem;
            }

            .github-link {
                display: none;
            }

            .message-list>.message>.nes-balloon {
                max-width: 60%;
            }
        }
    </style>
</head>
<body><div id="nescss">
    <header class="">
        <div class="container">
            <div class="nav-brand">
                <a href="https://github.com/Anankke/SSPanel-Uim">
                    <h1>STAFF</h1>
                </a>
                <p>©&nbsp;2020 orvice</p>
            </div></div></header>
    <div class="container">
        <main class="main-content">
            <section class="topic"><h2>
                <a href="#">#</a>MIT许可证</h2>
                <p>特此免费授予任何获得副本的人这个软件和相关的文档文件（“软件”）来处理在软件中没有限制，包括但不限于权利使用，复制，修改，合并，发布，分发，再许可和/或销售该软件的副本，并允许软件所属的人员提供这样做，但须符合以下条件：
                    <br>上述版权声明和本许可声明必须包含在内本软件的副本或实质性部分。
                    <br>本软件按“原样”提供，不附有任何形式的明示或暗示保证默示的，包括但不限于对适销性的保证，适用于特定目的和不侵权。在任何情况下，作者或版权持有者对任何索赔，损坏或其他责任均不负任何责任责任，无论是在合同，民事侵权行为或其他方面，与本软件或本软件的使用或其他交易有关或与之有关软件。
                </p>
            </section>
            <section class="topic">
                <h2><a href="#">#</a>免责声明</h2>
                <p>您当前所访问的站点使用的是下面所提到的开源程序。您能看到这个页面仅代表这个站点使用了本程序，其使用过程中发生的一切问题需要其自行解决，本程序不承担任何责任。
                </p>
                <div class="nes-table-responsive">
                    <table class="nes-table is-bordered">
                        <tbody><tr><td>原作</td><td>
                            <a href="https://github.com/orvice/">1#513宿舍</a>
                        </td></tr><tr><td>现阶段维护</td><td>
                            <a href="https://github.com/Talocan">zjl</a>，
                            <a href="https://github.com/galaxychuck">gzx</a>，
                            <a href="https://github.com/dumplin233">mj</a>，
                            <a href="https://github.com/mxihan">le</a>，
                            <a href="https://github.com/xcxnig">apc</a>，
                            <a href="https://github.com/ZJY2003">ycl</a>，

                        </td></tr><tr><td>监督</td><td>
                            <a href="https://github.com/Talocan">zjl</a>
                        </td></tr><tr><td>作画</td><td>
                            <a href="https://github.com/Daemonite/">mj</a>，
                            <a href="https://github.com/galaxychuck">le</a>
                        </td></tr><tr><td>鸣谢</td><td>
                            所有被引用过代码的同学，以及所有提交过PR的同学。当然，还有在使用这份程序的你我Ta。</td></tr>
                        <tr><td>本程序的参与人员列表</td><td>此列表为参与到<a href="https://github.com/Anankke/SSPanel-Uim">
                            SSPanel V3 Mod UIM</a>中的人员，在此表示感谢。</td></tr></tbody></table></div>
            </section><section class="topic"><h2><a href="#">#</a>Malio主题</h2>
            <div class="lists"><p>由<a href="https://t.me/editXY" target="_blank" rel="noopener">&nbsp;apc&nbsp;</a>修改适配。</p>
            </div></section><section class="topic"><h2><a href="#">#</a>Credits</h2>
            <div class="lists"><ul class="nes-list is-circle"><li>
                <a href="https://github.com/nostalgic-css/NES.css" target="_blank" rel="noopener">NES.css
                </a>&nbsp;-&nbsp;NES-style CSS Framework</li><li>
                <a href="https://github.com/stisla/stisla" target="_blank" rel="noopener">stisla
                </a>&nbsp;-&nbsp;Free Bootstrap Admin Template</li></ul></div></section></main><footer><p><span>©</span>
        <a href="/" rel="noopener" id="site-name"> 中乐乐</a><span>.</span>&nbsp;Theme by
        <a href="https://t.me/editXY" target="_blank" rel="noopener">&nbsp;@editXY</a></p></footer></div></div>
</body></html>