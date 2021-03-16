<%--
  Created by IntelliJ IDEA.
  User: 83986
  Date: 2020/12/14
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--登录界面--%>
<html lang="en" class=""><head>
    <meta charset="UTF-8">

    <link rel="icon" href="//yuanqi-wallpaper.zhhainiao.com/favicon.ico">
    <%--    lougo位置--%>

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>登录 — 中乐乐</title>
<%
request.getSession().setAttribute("email",null);
%>



    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/components.css">


    <link rel="stylesheet" href="css/swa.css">



</head>


<body class="" style="padding-right: 0px;">


<%--<div id="particles-js">--%>


<div id="app">

    <section class="section">

        <div class="d-flex flex-wrap align-items-stretch">

            <div class="col-lg-4 col-md-6 col-12 order-lg-1 min-vh-100 order-2 bg-white">
                <div class="p-4 m-3">
                    <img src="picture/stisla-fill.svg" alt="logo" width="80" class="shadow-light rounded-circle mb-5 mt-2">
                    <h4 class="text-dark font-weight-normal">欢迎使用 <span class="font-weight-bold">中乐乐</span></h4>
                    <p class="text-muted">欢迎光临中乐乐</p>
                    <form action="javascript:void(0);" method="POST" class="needs-validation" novalidate="">

                        <div class="login-form-item">
                            <div class="form-group">
                                <label for="email">账号</label>


                                <input id="email" type="email" class="form-control" name="email" tabindex="1" required="" autofocus="">
                                <%--                                <div class="invalid-feedback">请填写账号</div>--%>
                                <div class="invalid-feedback i18n" name="tishiEmail">账号不能为空</div>
                            </div>
                            <div class="form-group">
                                <div class="d-block">
                                    <label for="password" class="control-label">密码</label>
                                    <div class="float-right">

                                        <a href="Account/login.jsp" class="text-small">
                                            忘记密码？
                                        </a>
                                        <%--//忘记密码--%>
                                    </div>
                                </div>
                                <input id="password" type="password" class="form-control" name="password" tabindex="2" required="">
                                <%--                                <div class="invalid-feedback">请填写密码</div>--%>
                                <div class="invalid-feedback i18n" name="tishipassword">密码不能为空</div>
                            </div>
                        </div>

                        <%--                        <div id="2fa-form" class="form-group" style="display: none;">--%>
                        <%--                            <label for="2fa-code">二步验证</label>--%>
                        <%--                            <input id="2fa-code" type="number" class="form-control" name="2fa-code" tabindex="1" maxlength="6" placeholder="请输入6位验证码" required="">--%>
                        <%--                            <div class="invalid-feedback">--%>
                        <%--                                请输入验证码--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>

<%--                        <div class="form-group login-form-item">--%>
<%--                            <div class="custom-control custom-checkbox">--%>
<%--                                <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">--%>
<%--                                <label class="custom-control-label" for="remember-me">记住我</label>--%>
<%--                            </div>--%>
<%--                        </div>--%>

                        <div class="form-group text-right">
                            <button type="submit" class="btn btn-primary btn-lg btn-icon icon-right login" tabindex="4">
                                登录
                            </button>
                        </div>

                    </form>
                    <div class="mt-5 text-center login-form-item">
                        还没有账号？<a href="Account/regiss.jsp">马上注册 👉</a>
                    </div>
                    <div class="text-center mt-5 text-small">
                        Copyright © 2020 中乐乐
                        <div class="mt-2" id="copyright">音乐会<a href="Account/licence.jsp">许可证</a></div>
                    </div>
                </div>
            </div>

<%--            <div>--%>
<%--&lt;%&ndash;                <link rel="stylesheet" href="css/beijing.css">&ndash;%&gt;--%>
<%--            </div>--%>

            <div allowtransparency="true" class="col-lg-8 col-12 order-lg-2 order-1 min-vh-100 background-walk-y position-relative overlay-gradient-bottom" data-swiper-slide-index="2" style="width: 690px;">
                <video autoplay loop allowtransparency="true" class="video J_m_video" width="100%" height="100%" preload="" muted="" src="./picture/1111.mp4" type="video/mp4" x5-video-player-type="h5" loop="">
                    <img class="img" src="./picture/1111.mp4">
                </video></div>
<%--            图片--%>



            <%--            https://jike0.com/theme/malio/assets/img/unsplash/login-bg.jpg--%>
            <%--            <div class="col-lg-8 col-12 order-lg-2 order-1 min-vh-100 background-walk-y position-relative overlay-gradient-bottom" data-background="/theme/malio/assets/img/unsplash/login-bg.jpg" style="background-image: url(&quot;/theme/malio/assets/img/unsplash/login-bg.jpg&quot;);">--%>
            <%--                <div class="absolute-bottom-left index-2">--%>
            <%--                    <div class="text-light p-5 pb-2">--%>
            <%--                        <div class="mb-5 pb-3">--%>
            <%--                            <h1 class="mb-2 display-4 font-weight-bold">Good Afternoon</h1>--%>
            <%--                            <h5 class="font-weight-normal text-muted-transparent">Bali, Indonesia</h5>--%>
            <%--                        </div>--%>
            <%--                        Photo by <a class="text-light" target="_blank" href="https://unsplash.com/photos/a8lTjWJJgLA">Justin Kauffman</a> on <a class="text-light" target="_blank" href="https://unsplash.com">Unsplash</a>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>

        </div>
    </section>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/sweetalert2.all.min.js"></script>


<script>

    $("#password").blur(function (){
        var pd=document.getElementById('email').value;
        if(pd=='') $("#email").addClass("is-invalid");
        else{
            $("#email").removeClass("is-invalid")
            $("#email").addClass("is-valid")
        }
    })
    //判断账号框里是否为空

    $("#password").blur(function (){
        var pd=document.getElementById('password').value;
        if(pd=='') $("#password").addClass("is-invalid");
        else{
            $("#password").removeClass("is-invalid")
            $("#password").addClass("is-valid")
        }
    })
    //判断密码框里是否为空

    //var twoFA = false;
    function login() {

        if (!$("#password").val() || !$("#email").val()) {
            swal('出错了', '密码或邮箱不能为空', 'error');
            return false;
        }

        $.ajax({
            type: "POST",
            url: "/ss",
            dataType: "json",
            data: {
                email: $("#email").val(),
                passwd: $("#password").val(),
            },
            success: function (data) {

                if (data.ret == 1) {

                    document.getElementById("email").value="";
                    document.getElementById("password").value="";


                    window.location.assign('Users/mains.jsp');

                } else if(data.ret == 2) {
                    swal('出错了', '密码或邮箱不正确', 'error');
                }
                else {
                    swal('出错了', '其他错误', 'error');
                }
            }


        });
        //判断账号密码的正确性  并返回弹窗

    }
    //点击login    确定按钮后执行


    $("html").keydown(function (event) {
        if (event.keyCode == 13) {
            login();
        }
    });
    //监听按钮  键盘回车后

    $(".login").click(function () {
        login();
    });
    //监听按钮  点击后执行login（）

</script>

</body>
</html>
