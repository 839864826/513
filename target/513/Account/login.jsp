<%--
  Created by IntelliJ IDEA.
  User: 83986
  Date: 2020/12/14
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--密码找回--%>
<html lang="en"><head>
    <meta charset="UTF-8">

    <link rel="icon" href="//yuanqi-wallpaper.zhhainiao.com/favicon.ico">
    <%--    lougo位置--%>

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>找回密码 — 中乐乐</title>

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/all.min.css">

    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/components.css">

<%--    <script>--%>
<%--        window.ChatraSetup = {--%>
<%--            clientId: '',--%>
<%--            colors: {--%>
<%--                buttonText: '#fff',--%>
<%--                buttonBg: '#4958F7'--%>
<%--            },--%>

<%--            // locale: {--%>
<%--            //     "customStrings": {--%>
<%--            //         "welcome": "有疑问吗? 联系我们!",--%>
<%--            //         "chatWithUs": "与客服对话",--%>
<%--            //         "leaveUsAMessage": "给我们留言",--%>
<%--            //         "mobile_chatWithUs": "对话",--%>
<%--            //         "mobile_leaveUsAMessage": "留言",--%>
<%--            //         "offlineNote": "有任何疑问都可以留言，我们上线后会尽快回复。",--%>
<%--            //         "bot_thanksForMessage": "已收到你的信息，",--%>
<%--            //         "bot_startOnline": "我们会尽快回复。",--%>
<%--            //         "bot_startOnline_email": "我们会尽快回复，信息将会发送到此对话框或您的邮箱 ({{#email}})",--%>
<%--            //         "bot_startOnline_required": "填写昵称和邮箱即可与客服对话，我们会尽快回复。",--%>
<%--            //         "bot_startOffline": "我们会尽快回复。",--%>
<%--            //         "bot_startOffline_email": "我们会尽快回复，信息将会发送到此对话框或您的邮箱 ({{#email}})",--%>
<%--            //         "bot_startOffline_required": "填写昵称和邮箱后即可留言，收到留言后我们会尽快回复。",--%>
<%--            //         "bot_beforeForm": "请输入你的昵称和邮箱:",--%>
<%--            //         "bot_afterForm": "谢谢！",--%>
<%--            //         "bot_afterForm_email": "谢谢, 回复的信息将会发送到此对话框或您的邮箱。",--%>
<%--            //         "bot_details": "请详细描述你遇到的问题，尽量上传截图，以方便我们帮你快速解决问题。"--%>
<%--            //     },--%>
<%--            //     "online": "在线",--%>
<%--            //     "loading": "加载中...",--%>
<%--            //     "chat": {--%>
<%--            //         "empty": "Nothing here",--%>
<%--            //         "input": {--%>
<%--            //             "placeholder": "输入信息...",--%>
<%--            //             "oneMore": "输入信息...",--%>
<%--            //             "notIntroduced": "请输入你的昵称和邮箱",--%>
<%--            //             "reply": "回复 {{#name}}..."--%>
<%--            //         },--%>
<%--            //         "send": "发送",--%>
<%--            //         "messagesCount": "总共 {{#count}} 条信息",--%>
<%--            //         "noMessages": "没有信息",--%>
<%--            //         "newMessage": "新信息",--%>
<%--            //         "retrievingHistory": "正在加载聊天记录...",--%>
<%--            //         "more": "加载更多...",--%>
<%--            //         "loading": "加载中...",--%>
<%--            //         "introduce": "请提供你的昵称和邮箱",--%>
<%--            //         "insertEmoji": "输入Emoji"--%>
<%--            //     },--%>
<%--            //     "name": "昵称",--%>
<%--            //     "yourName": "你的昵称",--%>
<%--            //     "email": "邮箱",--%>
<%--            //     "message": "信息",--%>
<%--            //     "submit": "提交",--%>
<%--            //     "saved": "保存",--%>
<%--            //     "change": "更改",--%>
<%--            //     "cancel": "取消",--%>
<%--            //     "messageTypes": {--%>
<%--            //         "welcome": "欢迎",--%>
<%--            //         "joinedFirst": "加入对话",--%>
<%--            //         "joined": "{{#username}} 已加入对话",--%>
<%--            //         "left": "{{#username}} 离开了对话",--%>
<%--            //         "agentsOffline": "无人在线"--%>
<%--            //     },--%>
<%--            //     "agent": "客服",--%>
<%--            //     "typing": "正在输入",--%>
<%--            //     "areTyping": "正在输入",--%>
<%--            //     "minimize": "最小化",--%>
<%--            //     "date": {--%>
<%--            //         "month": {--%>
<%--            //             "full": "1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月",--%>
<%--            //             "short": "1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月",--%>
<%--            //         },--%>
<%--            //         "am": "上午_下午",--%>
<%--            //         "moment": "刚刚",--%>
<%--            //         "minute": "{{#count}}分钟前",--%>
<%--            //         "hour": "{{#count}}小时前",--%>
<%--            //         "day": "{{#count}}天前",--%>
<%--            //         "today": "今天",--%>
<%--            //         "yesterday": "昨天",--%>
<%--            //         "format": {--%>
<%--            //             "date": "MMMM D",--%>
<%--            //             "dateWithYear": "YYYY MMMM D",--%>
<%--            //             "when": "MMM D",--%>
<%--            //             "whenWithYear": "YYYY MMM D",--%>
<%--            //             "time": "h:mm A"--%>
<%--            //         }--%>
<%--            //     },--%>
<%--            //     "status": {--%>
<%--            //         "waiting": "{{$connecting}}",--%>
<%--            //         "connecting": "连接中...",--%>
<%--            //         "failed": "连接失败",--%>
<%--            //         "offline": "离线",--%>
<%--            //         "retry": "重新连接"--%>
<%--            //     },--%>
<%--            //     "smile": {--%>
<%--            //         "sorry": "¯\\_(ツ)_/¯"--%>
<%--            //     },--%>
<%--            //     "error": {--%>
<%--            //         "weird": "Weird error :-/",--%>
<%--            //         "incorrectEmail": "Incorrect email",--%>
<%--            //         "emptyEmail": "Empty email field",--%>
<%--            //         "emptyMessage": "Write something",--%>
<%--            //         "denied": "Access denied",--%>
<%--            //         "formNotDone": "The form has not been completed"--%>
<%--            //     },--%>
<%--            //     "and": "和",--%>
<%--            //     "close": "关闭",--%>
<%--            //     "requiredField": "Required field",--%>
<%--            //     "_chatra": {--%>
<%--            //         "logo": "Chatra",--%>
<%--            //         "phrase": "We run on",--%>
<%--            //         "chatra": "Chatra"--%>
<%--            //     },--%>
<%--            //     "messageSent": "Message sent!",--%>
<%--            //     "active": "Active",--%>
<%--            //     "activeShort": "Active less than an hour ago",--%>
<%--            //     "activeLong": "Active some time ago",--%>
<%--            //     "sending": "发送中...",--%>
<%--            //     "sent": "已发送",--%>
<%--            //     "unsent": "unsent, please introduce yourself",--%>
<%--            //     "notSeen": "未读",--%>
<%--            //     "seen": "已读",--%>
<%--            //     "units": {--%>
<%--            //         "b": "B",--%>
<%--            //         "kb": "KB",--%>
<%--            //         "mb": "MB",--%>
<%--            //         "gb": "GB"--%>
<%--            //     },--%>
<%--            //     "dropToUpload": "拖拽文件到这里上传",--%>
<%--            //     "uploadFile": "上传文件",--%>
<%--            //     "uploadFailed": "上传失败",--%>
<%--            //     "maximumFileSize": "文件大小不能超过 {{#size}} MB",--%>
<%--            //     "comment": "评论",--%>
<%--            //     "update": "更新",--%>
<%--            //     "optional": "可选"--%>
<%--            // }--%>
<%--        };--%>
<%--        --%>
<%--        (function (d, w, c) {--%>
<%--            w.ChatraID = '';--%>
<%--            var s = d.createElement('script');--%>
<%--            w[c] = w[c] || function () {--%>
<%--                (w[c].q = w[c].q || []).push(arguments);--%>
<%--            };--%>
<%--            s.async = true;--%>
<%--            s.src = 'https://call.chatra.io/chatra.js';--%>
<%--            if (d.head) d.head.appendChild(s);--%>
<%--        })(document, window, 'Chatra');--%>
<%--    </script><script async="" src="https://call.chatra.io/chatra.js"></script>--%>

    <style>@-webkit-keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@-webkit-keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@-webkit-keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@-webkit-keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@-webkit-keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@-webkit-keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@-webkit-keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}@keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast{flex-direction:column;align-items:stretch}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-actions{flex:1;align-self:stretch;height:2.2em}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-loading{justify-content:center}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-input{height:2em;margin:.3125em auto;font-size:1em}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-validationerror{font-size:1em}body.swal2-toast-shown>.swal2-container{position:fixed;background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-shown{background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-top{top:0;right:auto;bottom:auto;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-top-end,body.swal2-toast-shown>.swal2-container.swal2-top-right{top:0;right:0;bottom:auto;left:auto}body.swal2-toast-shown>.swal2-container.swal2-top-left,body.swal2-toast-shown>.swal2-container.swal2-top-start{top:0;right:auto;bottom:auto;left:0}body.swal2-toast-shown>.swal2-container.swal2-center-left,body.swal2-toast-shown>.swal2-container.swal2-center-start{top:50%;right:auto;bottom:auto;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-center{top:50%;right:auto;bottom:auto;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-toast-shown>.swal2-container.swal2-center-end,body.swal2-toast-shown>.swal2-container.swal2-center-right{top:50%;right:0;bottom:auto;left:auto;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-left,body.swal2-toast-shown>.swal2-container.swal2-bottom-start{top:auto;right:auto;bottom:0;left:0}body.swal2-toast-shown>.swal2-container.swal2-bottom{top:auto;right:auto;bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-end,body.swal2-toast-shown>.swal2-container.swal2-bottom-right{top:auto;right:0;bottom:0;left:auto}.swal2-popup.swal2-toast{flex-direction:row;align-items:center;width:auto;padding:.625em;box-shadow:0 0 .625em #d9d9d9;overflow-y:hidden}.swal2-popup.swal2-toast .swal2-header{flex-direction:row}.swal2-popup.swal2-toast .swal2-title{justify-content:flex-start;margin:0 .6em;font-size:1em}.swal2-popup.swal2-toast .swal2-footer{margin:.5em 0 0;padding:.5em 0 0;font-size:.8em}.swal2-popup.swal2-toast .swal2-close{position:initial;width:.8em;height:.8em;line-height:.8}.swal2-popup.swal2-toast .swal2-content{justify-content:flex-start;font-size:1em}.swal2-popup.swal2-toast .swal2-icon{width:2em;min-width:2em;height:2em;margin:0}.swal2-popup.swal2-toast .swal2-icon-text{font-size:2em;font-weight:700;line-height:1em}.swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line]{top:.875em;width:1.375em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:.3125em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:.3125em}.swal2-popup.swal2-toast .swal2-actions{height:auto;margin:.3125em .3125em 0}.swal2-popup.swal2-toast .swal2-styled{margin:0 .3125em;padding:.3125em .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-styled:focus{box-shadow:0 0 0 .0625em #fff,0 0 0 .125em rgba(50, 100, 150, 0.4)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }  .swal2-popup.swal2-toast .swal2-success{border-color:#a5dc86}  .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line]{position:absolute;width:2em;height:2.8125em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}  .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.25em;left:-.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:2em 2em;transform-origin:2em 2em;border-radius:4em 0 0 4em}  .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.25em;left:.9375em;-webkit-transform-origin:0 2em;transform-origin:0 2em;border-radius:0 4em 4em 0}  .swal2-popup.swal2-toast .swal2-success .swal2-success-ring{width:2em;height:2em}  .swal2-popup.swal2-toast .swal2-success .swal2-success-fix{top:0;left:.4375em;width:.4375em;height:2.6875em}  .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line]{height:.3125em}  .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip]{top:1.125em;left:.1875em;width:.75em}  .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long]{top:.9375em;right:.1875em;width:1.375em}  .swal2-popup.swal2-toast.swal2-show{-webkit-animation:showSweetToast .5s;animation:showSweetToast .5s}  .swal2-popup.swal2-toast.swal2-hide{-webkit-animation:hideSweetToast .2s forwards;animation:hideSweetToast .2s forwards}  .swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:animate-toast-success-tip .75s;animation:animate-toast-success-tip .75s}  .swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:animate-toast-success-long .75s;animation:animate-toast-success-long .75s}  @-webkit-keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0} 33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5} 66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7} 100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}  @keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0} 33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5} 66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7} 100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}  @-webkit-keyframes hideSweetToast{0%{opacity:1} 33%{opacity:.5} 100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}  @keyframes hideSweetToast{0%{opacity:1} 33%{opacity:.5} 100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}  @-webkit-keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0} 54%{top:.125em;left:.125em;width:0} 70%{top:.625em;left:-.25em;width:1.625em} 84%{top:1.0625em;left:.75em;width:.5em} 100%{top:1.125em;left:.1875em;width:.75em}}  @keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0} 54%{top:.125em;left:.125em;width:0} 70%{top:.625em;left:-.25em;width:1.625em} 84%{top:1.0625em;left:.75em;width:.5em} 100%{top:1.125em;left:.1875em;width:.75em}}  @-webkit-keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0} 65%{top:1.25em;right:.9375em;width:0} 84%{top:.9375em;right:0;width:1.125em} 100%{top:.9375em;right:.1875em;width:1.375em}}  @keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0} 65%{top:1.25em;right:.9375em;width:0} 84%{top:.9375em;right:0;width:1.125em} 100%{top:.9375em;right:.1875em;width:1.375em}}  body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){overflow-y:hidden}  body.swal2-height-auto{height:auto!important}  body.swal2-no-backdrop .swal2-shown{top:auto;right:auto;bottom:auto;left:auto;background-color:transparent}  body.swal2-no-backdrop .swal2-shown>.swal2-modal{box-shadow:0 0 10px rgba(0,0,0,.4)}  body.swal2-no-backdrop .swal2-shown.swal2-top{top:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}  body.swal2-no-backdrop .swal2-shown.swal2-top-left,body.swal2-no-backdrop .swal2-shown.swal2-top-start{top:0;left:0}  body.swal2-no-backdrop .swal2-shown.swal2-top-end,body.swal2-no-backdrop .swal2-shown.swal2-top-right{top:0;right:0}  body.swal2-no-backdrop .swal2-shown.swal2-center{top:50%;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}  body.swal2-no-backdrop .swal2-shown.swal2-center-left,body.swal2-no-backdrop .swal2-shown.swal2-center-start{top:50%;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}  body.swal2-no-backdrop .swal2-shown.swal2-center-end,body.swal2-no-backdrop .swal2-shown.swal2-center-right{top:50%;right:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}  body.swal2-no-backdrop .swal2-shown.swal2-bottom{bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}  body.swal2-no-backdrop .swal2-shown.swal2-bottom-left,body.swal2-no-backdrop .swal2-shown.swal2-bottom-start{bottom:0;left:0}  body.swal2-no-backdrop .swal2-shown.swal2-bottom-end,body.swal2-no-backdrop .swal2-shown.swal2-bottom-right{right:0;bottom:0}  .swal2-container{display:flex;position:fixed;top:0;right:0;bottom:0;left:0;flex-direction:row;align-items:center;justify-content:center;padding:10px;background-color:transparent;z-index:1060;overflow-x:hidden;-webkit-overflow-scrolling:touch}  .swal2-container.swal2-top{align-items:flex-start}  .swal2-container.swal2-top-left,.swal2-container.swal2-top-start{align-items:flex-start;justify-content:flex-start}  .swal2-container.swal2-top-end,.swal2-container.swal2-top-right{align-items:flex-start;justify-content:flex-end}  .swal2-container.swal2-center{align-items:center}  .swal2-container.swal2-center-left,.swal2-container.swal2-center-start{align-items:center;justify-content:flex-start}  .swal2-container.swal2-center-end,.swal2-container.swal2-center-right{align-items:center;justify-content:flex-end}  .swal2-container.swal2-bottom{align-items:flex-end}  .swal2-container.swal2-bottom-left,.swal2-container.swal2-bottom-start{align-items:flex-end;justify-content:flex-start}  .swal2-container.swal2-bottom-end,.swal2-container.swal2-bottom-right{align-items:flex-end;justify-content:flex-end}  .swal2-container.swal2-grow-fullscreen>.swal2-modal{display:flex!important;flex:1;align-self:stretch;justify-content:center}  .swal2-container.swal2-grow-row>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}  .swal2-container.swal2-grow-column{flex:1;flex-direction:column}  .swal2-container.swal2-grow-column.swal2-bottom,.swal2-container.swal2-grow-column.swal2-center,.swal2-container.swal2-grow-column.swal2-top{align-items:center}  .swal2-container.swal2-grow-column.swal2-bottom-left,.swal2-container.swal2-grow-column.swal2-bottom-start,.swal2-container.swal2-grow-column.swal2-center-left,.swal2-container.swal2-grow-column.swal2-center-start,.swal2-container.swal2-grow-column.swal2-top-left,.swal2-container.swal2-grow-column.swal2-top-start{align-items:flex-start}  .swal2-container.swal2-grow-column.swal2-bottom-end,.swal2-container.swal2-grow-column.swal2-bottom-right,.swal2-container.swal2-grow-column.swal2-center-end,.swal2-container.swal2-grow-column.swal2-center-right,.swal2-container.swal2-grow-column.swal2-top-end,.swal2-container.swal2-grow-column.swal2-top-right{align-items:flex-end}  .swal2-container.swal2-grow-column>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}  .swal2-container:not(.swal2-top):not(.swal2-top-start):not(.swal2-top-end):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-start):not(.swal2-center-end):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-start):not(.swal2-bottom-end):not(.swal2-bottom-left):not(.swal2-bottom-right)>.swal2-modal{margin:auto}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-container .swal2-modal{margin:0!important}}  .swal2-container.swal2-fade{transition:background-color .1s}  .swal2-container.swal2-shown{background-color:rgba(0,0,0,.4)}  .swal2-popup{display:none;position:relative;flex-direction:column;justify-content:center;width:32em;max-width:100%;padding:1.25em;border-radius:.3125em;background:#fff;font-family:inherit;font-size:1rem;box-sizing:border-box}  .swal2-popup:focus{outline:0}  .swal2-popup.swal2-loading{overflow-y:hidden}  .swal2-popup .swal2-header{display:flex;flex-direction:column;align-items:center}  .swal2-popup .swal2-title{display:block;position:relative;max-width:100%;margin:0 0 .4em;padding:0;color:#595959;font-size:1.875em;font-weight:600;text-align:center;text-transform:none;word-wrap:break-word}  .swal2-popup .swal2-actions{align-items:center;justify-content:center;margin:1.25em auto 0}  .swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled[disabled]{opacity:.4}  .swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:hover{background-image:linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.1))}  .swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:active{background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2))}  .swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-confirm{width:2.5em;height:2.5em;margin:.46875em;padding:0;border:.25em solid transparent;border-radius:100%;border-color:transparent;background-color:transparent!important;color:transparent;cursor:default;box-sizing:border-box;-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}  .swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-cancel{margin-right:30px;margin-left:30px}  .swal2-popup .swal2-actions.swal2-loading :not(.swal2-styled).swal2-confirm::after{display:inline-block;width:15px;height:15px;margin-left:5px;border:3px solid #999;border-radius:50%;border-right-color:transparent;box-shadow:1px 1px 1px #fff;content:'';-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal}  .swal2-popup .swal2-styled{margin:0 .3125em;padding:.625em 2em;font-weight:500;box-shadow:none}  .swal2-popup .swal2-styled:not([disabled]){cursor:pointer}  .swal2-popup .swal2-styled.swal2-confirm{border:0;border-radius:.25em;background:initial;background-color:#3085d6;color:#fff;font-size:1.0625em}  .swal2-popup .swal2-styled.swal2-cancel{border:0;border-radius:.25em;background:initial;background-color:#aaa;color:#fff;font-size:1.0625em}  .swal2-popup .swal2-styled:focus{outline:0;box-shadow:0 0 0 2px #fff,0 0 0 4px rgba(50,100,150,.4)}  .swal2-popup .swal2-styled::-moz-focus-inner{border:0}  .swal2-popup .swal2-footer{justify-content:center;margin:1.25em 0 0;padding:1em 0 0;border-top:1px solid #eee;color:#545454;font-size:1em}  .swal2-popup .swal2-image{max-width:100%;margin:1.25em auto}  .swal2-popup .swal2-close{position:absolute;top:0;right:0;justify-content:center;width:1.2em;height:1.2em;padding:0;transition:color .1s ease-out;border:none;border-radius:0;background:0 0;color:#ccc;font-family:serif;font-size:2.5em;line-height:1.2;cursor:pointer;overflow:hidden}  .swal2-popup .swal2-close:hover{-webkit-transform:none;transform:none;color:#f27474}  .swal2-popup>.swal2-checkbox,.swal2-popup>.swal2-file,.swal2-popup>.swal2-input,.swal2-popup>.swal2-radio,.swal2-popup>.swal2-select,.swal2-popup>.swal2-textarea{display:none}  .swal2-popup .swal2-content{justify-content:center;margin:0;padding:0;color:#545454;font-size:1.125em;font-weight:300;line-height:normal;word-wrap:break-word}  .swal2-popup #swal2-content{text-align:center}  .swal2-popup .swal2-checkbox,.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-radio,.swal2-popup .swal2-select,.swal2-popup .swal2-textarea{margin:1em auto}  .swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-textarea{width:100%;transition:border-color .3s,box-shadow .3s;border:1px solid #d9d9d9;border-radius:.1875em;font-size:1.125em;box-shadow:inset 0 1px 1px rgba(0,0,0,.06);box-sizing:border-box}  .swal2-popup .swal2-file.swal2-inputerror,.swal2-popup .swal2-input.swal2-inputerror,.swal2-popup .swal2-textarea.swal2-inputerror{border-color:#f27474!important;box-shadow:0 0 2px #f27474!important}  .swal2-popup .swal2-file:focus,.swal2-popup .swal2-input:focus,.swal2-popup .swal2-textarea:focus{border:1px solid #b4dbed;outline:0;box-shadow:0 0 3px #c4e6f5}  .swal2-popup .swal2-file::-webkit-input-placeholder,.swal2-popup .swal2-input::-webkit-input-placeholder,.swal2-popup .swal2-textarea::-webkit-input-placeholder{color:#ccc}  .swal2-popup .swal2-file:-ms-input-placeholder,.swal2-popup .swal2-input:-ms-input-placeholder,.swal2-popup .swal2-textarea:-ms-input-placeholder{color:#ccc}  .swal2-popup .swal2-file::-ms-input-placeholder,.swal2-popup .swal2-input::-ms-input-placeholder,.swal2-popup .swal2-textarea::-ms-input-placeholder{color:#ccc}  .swal2-popup .swal2-file::placeholder,.swal2-popup .swal2-input::placeholder,.swal2-popup .swal2-textarea::placeholder{color:#ccc}  .swal2-popup .swal2-range input{width:80%}  .swal2-popup .swal2-range output{width:20%;font-weight:600;text-align:center}  .swal2-popup .swal2-range input,.swal2-popup .swal2-range output{height:2.625em;margin:1em auto;padding:0;font-size:1.125em;line-height:2.625em}  .swal2-popup .swal2-input{height:2.625em;padding:.75em}  .swal2-popup .swal2-input[type=number]{max-width:10em}  .swal2-popup .swal2-file{font-size:1.125em}  .swal2-popup .swal2-textarea{height:6.75em;padding:.75em}  .swal2-popup .swal2-select{min-width:50%;max-width:100%;padding:.375em .625em;color:#545454;font-size:1.125em}  .swal2-popup .swal2-checkbox,.swal2-popup .swal2-radio{align-items:center;justify-content:center}  .swal2-popup .swal2-checkbox label,.swal2-popup .swal2-radio label{margin:0 .6em;font-size:1.125em}  .swal2-popup .swal2-checkbox input,.swal2-popup .swal2-radio input{margin:0 .4em}  .swal2-popup .swal2-validationerror{display:none;align-items:center;justify-content:center;padding:.625em;background:#f0f0f0;color:#666;font-size:1em;font-weight:300;overflow:hidden}  .swal2-popup .swal2-validationerror::before{display:inline-block;width:1.5em;min-width:1.5em;height:1.5em;margin:0 .625em;border-radius:50%;background-color:#f27474;color:#fff;font-weight:600;line-height:1.5em;text-align:center;content:'!';zoom:normal}@supports (-ms-accelerator:true){.swal2-range input{width:100%!important}  .swal2-range output{display:none}}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-range input{width:100%!important}  .swal2-range output{display:none}}  @-moz-document url-prefix(){.swal2-close:focus{outline:2px solid rgba(50,100,150,.4)}}  .swal2-icon{position:relative;justify-content:center;width:5em;height:5em;margin:1.25em auto 1.875em;border:.25em solid transparent;border-radius:50%;line-height:5em;cursor:default;box-sizing:content-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;zoom:normal}  .swal2-icon-text{font-size:3.75em}  .swal2-icon.swal2-error{border-color:#f27474}  .swal2-icon.swal2-error .swal2-x-mark{position:relative;flex-grow:1}  .swal2-icon.swal2-error [class^=swal2-x-mark-line]{display:block;position:absolute;top:2.3125em;width:2.9375em;height:.3125em;border-radius:.125em;background-color:#f27474}  .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:1.0625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}  .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:1em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}  .swal2-icon.swal2-warning{border-color:#facea8;color:#f8bb86}  .swal2-icon.swal2-info{border-color:#9de0f6;color:#3fc3ee}  .swal2-icon.swal2-question{border-color:#c9dae1;color:#87adbd}  .swal2-icon.swal2-success{border-color:#a5dc86}  .swal2-icon.swal2-success [class^=swal2-success-circular-line]{position:absolute;width:3.75em;height:7.5em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}  .swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.4375em;left:-2.0635em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:3.75em 3.75em;transform-origin:3.75em 3.75em;border-radius:7.5em 0 0 7.5em}  .swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.6875em;left:1.875em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:0 3.75em;transform-origin:0 3.75em;border-radius:0 7.5em 7.5em 0}  .swal2-icon.swal2-success .swal2-success-ring{position:absolute;top:-.25em;left:-.25em;width:100%;height:100%;border:.25em solid rgba(165,220,134,.3);border-radius:50%;z-index:2;box-sizing:content-box}  .swal2-icon.swal2-success .swal2-success-fix{position:absolute;top:.5em;left:1.625em;width:.4375em;height:5.625em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);z-index:1}  .swal2-icon.swal2-success [class^=swal2-success-line]{display:block;position:absolute;height:.3125em;border-radius:.125em;background-color:#a5dc86;z-index:2}  .swal2-icon.swal2-success [class^=swal2-success-line][class$=tip]{top:2.875em;left:.875em;width:1.5625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}  .swal2-icon.swal2-success [class^=swal2-success-line][class$=long]{top:2.375em;right:.5em;width:2.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}  .swal2-progresssteps{align-items:center;margin:0 0 1.25em;padding:0;font-weight:600}  .swal2-progresssteps li{display:inline-block;position:relative}  .swal2-progresssteps .swal2-progresscircle{width:2em;height:2em;border-radius:2em;background:#3085d6;color:#fff;line-height:2em;text-align:center;z-index:20}  .swal2-progresssteps .swal2-progresscircle:first-child{margin-left:0}  .swal2-progresssteps .swal2-progresscircle:last-child{margin-right:0}  .swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep{background:#3085d6}  .swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progresscircle{background:#add8e6}  .swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progressline{background:#add8e6}  .swal2-progresssteps .swal2-progressline{width:2.5em;height:.4em;margin:0 -1px;background:#3085d6;z-index:10}  [class^=swal2]{-webkit-tap-highlight-color:transparent}  .swal2-show{-webkit-animation:swal2-show .3s;animation:swal2-show .3s}  .swal2-show.swal2-noanimation{-webkit-animation:none;animation:none}  .swal2-hide{-webkit-animation:swal2-hide .15s forwards;animation:swal2-hide .15s forwards}  .swal2-hide.swal2-noanimation{-webkit-animation:none;animation:none}  [dir=rtl] .swal2-close{right:auto;left:0}  .swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:swal2-animate-success-line-tip .75s;animation:swal2-animate-success-line-tip .75s}  .swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:swal2-animate-success-line-long .75s;animation:swal2-animate-success-line-long .75s}  .swal2-animate-success-icon .swal2-success-circular-line-right{-webkit-animation:swal2-rotate-success-circular-line 4.25s ease-in;animation:swal2-rotate-success-circular-line 4.25s ease-in}  .swal2-animate-error-icon{-webkit-animation:swal2-animate-error-icon .5s;animation:swal2-animate-error-icon .5s}  .swal2-animate-error-icon .swal2-x-mark{-webkit-animation:swal2-animate-error-x-mark .5s;animation:swal2-animate-error-x-mark .5s}  @-webkit-keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)} 100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}  @keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)} 100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}</style></head>
<body>
<div id="app">
    <section class="section">
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                    <div class="login-brand">
                        <img src="../picture/stisla-fill.svg" alt="logo" width="100" class="shadow-light rounded-circle">
                    </div>
                    <div class="card card-primary">
                        <div class="card-header">
                            <h4>找回密码</h4>
                        </div>
                        <div class="card-body">
                            <p class="text-muted">我们将会发送一封包含重置密码链接的邮件到您的邮箱</p>
                            <div class="form-group">
                                <label for="email">邮箱</label>
                                <input id="email" type="email" class="form-control" name="email" tabindex="1" required="" autofocus="">
                            </div>
                            <div class="form-group">
                                <button id="reset" type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                                    找回
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="mt-5 text-muted text-center">
                        <a href="../index.jsp">返回登录</a>
                    </div>
                    <div class="simple-footer">
                        Copyright © 2020 中乐乐
                        <div class="mt-2" id="copyright">音乐会 <a href="licence.jsp">许可证</a> </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


<%--<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>--%>
<%--&lt;%&ndash;重要&ndash;%&gt;--%>

<script src="../js/jquery.min.js"></script>
<%--重要--%>

<%--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>--%>
<script src="../js/popper.min.js"></script>



<%--<script src="https://cdn.jsdelivr.net/npm/tooltip.js@1.3.2/dist/umd/tooltip.min.js"></script>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/jquery.nicescroll@3.7.6/jquery.nicescroll.min.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/moment@2.18.1/min/moment.min.js"></script>--%>


<%--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.25.6/dist/sweetalert2.all.min.js"></script>--%>
<%--&lt;%&ndash;弹窗&ndash;%&gt;--%>

<script src="../js/sweetalert2.all.min.js"></script>
<%--弹窗--%>

<%--&lt;%&ndash;<script src="https://jike0.com/theme/malio/js/malio.js?5tgas4s"></script>&ndash;%&gt;--%>
<script>

    function reset() {
        $("#reset").attr('disabled', 'disabled');
        $("#reset").text('发送中...');
        $.ajax({
            type: "POST",
            url: "/login/mail",
            dataType: "json",
            data: {
                email: $("#email").val(),
            },
            success: function (data) {
                if (data.ret == 1) {
                    swal({
                        type: 'success',
                        title: '邮件已发送',
                        text: '如长时间未收到，请查看邮件垃圾箱',
                        showCloseButton: true,
                        onClose: () => {
                            window.location.assign('/login')
                        }
                    })
                }else if(data.ret==3){
                    $("#reset").text('找回');
                    $("#reset").removeAttr('disabled');
                    swal({
                        type: 'error',
                        title: '邮箱为空',
                        text: '请注意填写',
                        showCloseButton: true,
                    }
                    )
                }else if(data.ret==4){
                    $("#reset").text('找回');
                    $("#reset").removeAttr('disabled');
                    swal({
                            type: 'error',
                            title: '邮箱格式错误',
                            text: '请注意填写',
                            showCloseButton: true,
                        }
                    )
                }else {
                    $("#reset").text('找回');
                    $("#reset").removeAttr('disabled');
                    swal({
                        type: 'error',
                        title: '发送失败',
                        showCloseButton: true,
                        text: data.msg
                    })
                }
            }
        });
    }

    $("html").keydown(function (event) {
        if (event.keyCode == 13) {
            reset();
        }
    });
    $("#reset").click(function () {
        reset();
    });
</script>

<%--<script>--%>
<%--    var code = "UG93ZXJlZCBieSA8YSBocmVmPSIvc3RhZmYiPlNTUEFORUw8L2E+IDxkaXYgY2xhc3M9ImJ1bGxldCI+PC9kaXY+VGhlbWUgYnkgPGEgaHJlZj0iaHR0cHM6Ly90Lm1lL2VkaXRYWSIgdGFyZ2V0PSJibGFuayI+ZWRpdFhZPC9hPg==";--%>
<%--    $('#copyright').html(atob(code));--%>
<%--</script>--%>


</body></html>