<%--
  Created by IntelliJ IDEA.
  User: 83986
  Date: 2020/12/14
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--注册--%>
<html lang="en"><head>
    <meta charset="UTF-8">
    <link rel="icon" href="//yuanqi-wallpaper.zhhainiao.com/favicon.ico">
    <%--    lougo位置--%>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>注册 — 中乐乐</title>

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/all.min.css">

    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/components.css">


    <style>@-webkit-keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@keyframes swal2-show{0%{-webkit-transform:scale(.7);transform:scale(.7)}45%{-webkit-transform:scale(1.05);transform:scale(1.05)}80%{-webkit-transform:scale(.95);transform:scale(.95)}100%{-webkit-transform:scale(1);transform:scale(1)}}@-webkit-keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@keyframes swal2-hide{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}100%{-webkit-transform:scale(.5);transform:scale(.5);opacity:0}}@-webkit-keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@keyframes swal2-animate-success-line-tip{0%{top:1.1875em;left:.0625em;width:0}54%{top:1.0625em;left:.125em;width:0}70%{top:2.1875em;left:-.375em;width:3.125em}84%{top:3em;left:1.3125em;width:1.0625em}100%{top:2.8125em;left:.875em;width:1.5625em}}@-webkit-keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@keyframes swal2-animate-success-line-long{0%{top:3.375em;right:2.875em;width:0}65%{top:3.375em;right:2.875em;width:0}84%{top:2.1875em;right:0;width:3.4375em}100%{top:2.375em;right:.5em;width:2.9375em}}@-webkit-keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@keyframes swal2-rotate-success-circular-line{0%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}5%{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}12%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}100%{-webkit-transform:rotate(-405deg);transform:rotate(-405deg)}}@-webkit-keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@keyframes swal2-animate-error-x-mark{0%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}50%{margin-top:1.625em;-webkit-transform:scale(.4);transform:scale(.4);opacity:0}80%{margin-top:-.375em;-webkit-transform:scale(1.15);transform:scale(1.15)}100%{margin-top:0;-webkit-transform:scale(1);transform:scale(1);opacity:1}}@-webkit-keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}@keyframes swal2-animate-error-icon{0%{-webkit-transform:rotateX(100deg);transform:rotateX(100deg);opacity:0}100%{-webkit-transform:rotateX(0);transform:rotateX(0);opacity:1}}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast{flex-direction:column;align-items:stretch}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-actions{flex:1;align-self:stretch;height:2.2em}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-loading{justify-content:center}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-input{height:2em;margin:.3125em auto;font-size:1em}body.swal2-toast-shown.swal2-toast-column>.swal2-container>.swal2-toast .swal2-validationerror{font-size:1em}body.swal2-toast-shown>.swal2-container{position:fixed;background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-shown{background-color:transparent}body.swal2-toast-shown>.swal2-container.swal2-top{top:0;right:auto;bottom:auto;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-top-end,body.swal2-toast-shown>.swal2-container.swal2-top-right{top:0;right:0;bottom:auto;left:auto}body.swal2-toast-shown>.swal2-container.swal2-top-left,body.swal2-toast-shown>.swal2-container.swal2-top-start{top:0;right:auto;bottom:auto;left:0}body.swal2-toast-shown>.swal2-container.swal2-center-left,body.swal2-toast-shown>.swal2-container.swal2-center-start{top:50%;right:auto;bottom:auto;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-center{top:50%;right:auto;bottom:auto;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-toast-shown>.swal2-container.swal2-center-end,body.swal2-toast-shown>.swal2-container.swal2-center-right{top:50%;right:0;bottom:auto;left:auto;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-left,body.swal2-toast-shown>.swal2-container.swal2-bottom-start{top:auto;right:auto;bottom:0;left:0}body.swal2-toast-shown>.swal2-container.swal2-bottom{top:auto;right:auto;bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-toast-shown>.swal2-container.swal2-bottom-end,body.swal2-toast-shown>.swal2-container.swal2-bottom-right{top:auto;right:0;bottom:0;left:auto}.swal2-popup.swal2-toast{flex-direction:row;align-items:center;width:auto;padding:.625em;box-shadow:0 0 .625em #d9d9d9;overflow-y:hidden}.swal2-popup.swal2-toast .swal2-header{flex-direction:row}.swal2-popup.swal2-toast .swal2-title{justify-content:flex-start;margin:0 .6em;font-size:1em}.swal2-popup.swal2-toast .swal2-footer{margin:.5em 0 0;padding:.5em 0 0;font-size:.8em}.swal2-popup.swal2-toast .swal2-close{position:initial;width:.8em;height:.8em;line-height:.8}.swal2-popup.swal2-toast .swal2-content{justify-content:flex-start;font-size:1em}.swal2-popup.swal2-toast .swal2-icon{width:2em;min-width:2em;height:2em;margin:0}.swal2-popup.swal2-toast .swal2-icon-text{font-size:2em;font-weight:700;line-height:1em}.swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line]{top:.875em;width:1.375em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:.3125em}.swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:.3125em}.swal2-popup.swal2-toast .swal2-actions{height:auto;margin:.3125em .3125em 0}.swal2-popup.swal2-toast .swal2-styled{margin:0 .3125em;padding:.3125em .625em;font-size:1em}.swal2-popup.swal2-toast .swal2-styled:focus{box-shadow:0 0 0 .0625em #fff,0 0 0 .125em rgba(50,100,150,.4)}.swal2-popup.swal2-toast .swal2-success{border-color:#a5dc86}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line]{position:absolute;width:2em;height:2.8125em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.25em;left:-.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:2em 2em;transform-origin:2em 2em;border-radius:4em 0 0 4em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.25em;left:.9375em;-webkit-transform-origin:0 2em;transform-origin:0 2em;border-radius:0 4em 4em 0}.swal2-popup.swal2-toast .swal2-success .swal2-success-ring{width:2em;height:2em}.swal2-popup.swal2-toast .swal2-success .swal2-success-fix{top:0;left:.4375em;width:.4375em;height:2.6875em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line]{height:.3125em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip]{top:1.125em;left:.1875em;width:.75em}.swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long]{top:.9375em;right:.1875em;width:1.375em}.swal2-popup.swal2-toast.swal2-show{-webkit-animation:showSweetToast .5s;animation:showSweetToast .5s}.swal2-popup.swal2-toast.swal2-hide{-webkit-animation:hideSweetToast .2s forwards;animation:hideSweetToast .2s forwards}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:animate-toast-success-tip .75s;animation:animate-toast-success-tip .75s}.swal2-popup.swal2-toast .swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:animate-toast-success-long .75s;animation:animate-toast-success-long .75s}@-webkit-keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@keyframes showSweetToast{0%{-webkit-transform:translateY(-.625em) rotateZ(2deg);transform:translateY(-.625em) rotateZ(2deg);opacity:0}33%{-webkit-transform:translateY(0) rotateZ(-2deg);transform:translateY(0) rotateZ(-2deg);opacity:.5}66%{-webkit-transform:translateY(.3125em) rotateZ(2deg);transform:translateY(.3125em) rotateZ(2deg);opacity:.7}100%{-webkit-transform:translateY(0) rotateZ(0);transform:translateY(0) rotateZ(0);opacity:1}}@-webkit-keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@keyframes hideSweetToast{0%{opacity:1}33%{opacity:.5}100%{-webkit-transform:rotateZ(1deg);transform:rotateZ(1deg);opacity:0}}@-webkit-keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@keyframes animate-toast-success-tip{0%{top:.5625em;left:.0625em;width:0}54%{top:.125em;left:.125em;width:0}70%{top:.625em;left:-.25em;width:1.625em}84%{top:1.0625em;left:.75em;width:.5em}100%{top:1.125em;left:.1875em;width:.75em}}@-webkit-keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}@keyframes animate-toast-success-long{0%{top:1.625em;right:1.375em;width:0}65%{top:1.25em;right:.9375em;width:0}84%{top:.9375em;right:0;width:1.125em}100%{top:.9375em;right:.1875em;width:1.375em}}body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown){overflow-y:hidden}body.swal2-height-auto{height:auto!important}body.swal2-no-backdrop .swal2-shown{top:auto;right:auto;bottom:auto;left:auto;background-color:transparent}body.swal2-no-backdrop .swal2-shown>.swal2-modal{box-shadow:0 0 10px rgba(0,0,0,.4)}body.swal2-no-backdrop .swal2-shown.swal2-top{top:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-top-left,body.swal2-no-backdrop .swal2-shown.swal2-top-start{top:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-top-end,body.swal2-no-backdrop .swal2-shown.swal2-top-right{top:0;right:0}body.swal2-no-backdrop .swal2-shown.swal2-center{top:50%;left:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-left,body.swal2-no-backdrop .swal2-shown.swal2-center-start{top:50%;left:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-center-end,body.swal2-no-backdrop .swal2-shown.swal2-center-right{top:50%;right:0;-webkit-transform:translateY(-50%);transform:translateY(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom{bottom:0;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%)}body.swal2-no-backdrop .swal2-shown.swal2-bottom-left,body.swal2-no-backdrop .swal2-shown.swal2-bottom-start{bottom:0;left:0}body.swal2-no-backdrop .swal2-shown.swal2-bottom-end,body.swal2-no-backdrop .swal2-shown.swal2-bottom-right{right:0;bottom:0}.swal2-container{display:flex;position:fixed;top:0;right:0;bottom:0;left:0;flex-direction:row;align-items:center;justify-content:center;padding:10px;background-color:transparent;z-index:1060;overflow-x:hidden;-webkit-overflow-scrolling:touch}.swal2-container.swal2-top{align-items:flex-start}.swal2-container.swal2-top-left,.swal2-container.swal2-top-start{align-items:flex-start;justify-content:flex-start}.swal2-container.swal2-top-end,.swal2-container.swal2-top-right{align-items:flex-start;justify-content:flex-end}.swal2-container.swal2-center{align-items:center}.swal2-container.swal2-center-left,.swal2-container.swal2-center-start{align-items:center;justify-content:flex-start}.swal2-container.swal2-center-end,.swal2-container.swal2-center-right{align-items:center;justify-content:flex-end}.swal2-container.swal2-bottom{align-items:flex-end}.swal2-container.swal2-bottom-left,.swal2-container.swal2-bottom-start{align-items:flex-end;justify-content:flex-start}.swal2-container.swal2-bottom-end,.swal2-container.swal2-bottom-right{align-items:flex-end;justify-content:flex-end}.swal2-container.swal2-grow-fullscreen>.swal2-modal{display:flex!important;flex:1;align-self:stretch;justify-content:center}.swal2-container.swal2-grow-row>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container.swal2-grow-column{flex:1;flex-direction:column}.swal2-container.swal2-grow-column.swal2-bottom,.swal2-container.swal2-grow-column.swal2-center,.swal2-container.swal2-grow-column.swal2-top{align-items:center}.swal2-container.swal2-grow-column.swal2-bottom-left,.swal2-container.swal2-grow-column.swal2-bottom-start,.swal2-container.swal2-grow-column.swal2-center-left,.swal2-container.swal2-grow-column.swal2-center-start,.swal2-container.swal2-grow-column.swal2-top-left,.swal2-container.swal2-grow-column.swal2-top-start{align-items:flex-start}.swal2-container.swal2-grow-column.swal2-bottom-end,.swal2-container.swal2-grow-column.swal2-bottom-right,.swal2-container.swal2-grow-column.swal2-center-end,.swal2-container.swal2-grow-column.swal2-center-right,.swal2-container.swal2-grow-column.swal2-top-end,.swal2-container.swal2-grow-column.swal2-top-right{align-items:flex-end}.swal2-container.swal2-grow-column>.swal2-modal{display:flex!important;flex:1;align-content:center;justify-content:center}.swal2-container:not(.swal2-top):not(.swal2-top-start):not(.swal2-top-end):not(.swal2-top-left):not(.swal2-top-right):not(.swal2-center-start):not(.swal2-center-end):not(.swal2-center-left):not(.swal2-center-right):not(.swal2-bottom):not(.swal2-bottom-start):not(.swal2-bottom-end):not(.swal2-bottom-left):not(.swal2-bottom-right)>.swal2-modal{margin:auto}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-container .swal2-modal{margin:0!important}}.swal2-container.swal2-fade{transition:background-color .1s}.swal2-container.swal2-shown{background-color:rgba(0,0,0,.4)}.swal2-popup{display:none;position:relative;flex-direction:column;justify-content:center;width:32em;max-width:100%;padding:1.25em;border-radius:.3125em;background:#fff;font-family:inherit;font-size:1rem;box-sizing:border-box}.swal2-popup:focus{outline:0}.swal2-popup.swal2-loading{overflow-y:hidden}.swal2-popup .swal2-header{display:flex;flex-direction:column;align-items:center}.swal2-popup .swal2-title{display:block;position:relative;max-width:100%;margin:0 0 .4em;padding:0;color:#595959;font-size:1.875em;font-weight:600;text-align:center;text-transform:none;word-wrap:break-word}.swal2-popup .swal2-actions{align-items:center;justify-content:center;margin:1.25em auto 0}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled[disabled]{opacity:.4}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:hover{background-image:linear-gradient(rgba(0,0,0,.1),rgba(0,0,0,.1))}.swal2-popup .swal2-actions:not(.swal2-loading) .swal2-styled:active{background-image:linear-gradient(rgba(0,0,0,.2),rgba(0,0,0,.2))}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-confirm{width:2.5em;height:2.5em;margin:.46875em;padding:0;border:.25em solid transparent;border-radius:100%;border-color:transparent;background-color:transparent!important;color:transparent;cursor:default;box-sizing:border-box;-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.swal2-popup .swal2-actions.swal2-loading .swal2-styled.swal2-cancel{margin-right:30px;margin-left:30px}.swal2-popup .swal2-actions.swal2-loading :not(.swal2-styled).swal2-confirm::after{display:inline-block;width:15px;height:15px;margin-left:5px;border:3px solid #999;border-radius:50%;border-right-color:transparent;box-shadow:1px 1px 1px #fff;content:'';-webkit-animation:swal2-rotate-loading 1.5s linear 0s infinite normal;animation:swal2-rotate-loading 1.5s linear 0s infinite normal}.swal2-popup .swal2-styled{margin:0 .3125em;padding:.625em 2em;font-weight:500;box-shadow:none}.swal2-popup .swal2-styled:not([disabled]){cursor:pointer}.swal2-popup .swal2-styled.swal2-confirm{border:0;border-radius:.25em;background:initial;background-color:#3085d6;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled.swal2-cancel{border:0;border-radius:.25em;background:initial;background-color:#aaa;color:#fff;font-size:1.0625em}.swal2-popup .swal2-styled:focus{outline:0;box-shadow:0 0 0 2px #fff,0 0 0 4px rgba(50,100,150,.4)}.swal2-popup .swal2-styled::-moz-focus-inner{border:0}.swal2-popup .swal2-footer{justify-content:center;margin:1.25em 0 0;padding:1em 0 0;border-top:1px solid #eee;color:#545454;font-size:1em}.swal2-popup .swal2-image{max-width:100%;margin:1.25em auto}.swal2-popup .swal2-close{position:absolute;top:0;right:0;justify-content:center;width:1.2em;height:1.2em;padding:0;transition:color .1s ease-out;border:none;border-radius:0;background:0 0;color:#ccc;font-family:serif;font-size:2.5em;line-height:1.2;cursor:pointer;overflow:hidden}.swal2-popup .swal2-close:hover{-webkit-transform:none;transform:none;color:#f27474}.swal2-popup>.swal2-checkbox,.swal2-popup>.swal2-file,.swal2-popup>.swal2-input,.swal2-popup>.swal2-radio,.swal2-popup>.swal2-select,.swal2-popup>.swal2-textarea{display:none}.swal2-popup .swal2-content{justify-content:center;margin:0;padding:0;color:#545454;font-size:1.125em;font-weight:300;line-height:normal;word-wrap:break-word}.swal2-popup #swal2-content{text-align:center}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-radio,.swal2-popup .swal2-select,.swal2-popup .swal2-textarea{margin:1em auto}.swal2-popup .swal2-file,.swal2-popup .swal2-input,.swal2-popup .swal2-textarea{width:100%;transition:border-color .3s,box-shadow .3s;border:1px solid #d9d9d9;border-radius:.1875em;font-size:1.125em;box-shadow:inset 0 1px 1px rgba(0,0,0,.06);box-sizing:border-box}.swal2-popup .swal2-file.swal2-inputerror,.swal2-popup .swal2-input.swal2-inputerror,.swal2-popup .swal2-textarea.swal2-inputerror{border-color:#f27474!important;box-shadow:0 0 2px #f27474!important}.swal2-popup .swal2-file:focus,.swal2-popup .swal2-input:focus,.swal2-popup .swal2-textarea:focus{border:1px solid #b4dbed;outline:0;box-shadow:0 0 3px #c4e6f5}.swal2-popup .swal2-file::-webkit-input-placeholder,.swal2-popup .swal2-input::-webkit-input-placeholder,.swal2-popup .swal2-textarea::-webkit-input-placeholder{color:#ccc}.swal2-popup .swal2-file:-ms-input-placeholder,.swal2-popup .swal2-input:-ms-input-placeholder,.swal2-popup .swal2-textarea:-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::-ms-input-placeholder,.swal2-popup .swal2-input::-ms-input-placeholder,.swal2-popup .swal2-textarea::-ms-input-placeholder{color:#ccc}.swal2-popup .swal2-file::placeholder,.swal2-popup .swal2-input::placeholder,.swal2-popup .swal2-textarea::placeholder{color:#ccc}.swal2-popup .swal2-range input{width:80%}.swal2-popup .swal2-range output{width:20%;font-weight:600;text-align:center}.swal2-popup .swal2-range input,.swal2-popup .swal2-range output{height:2.625em;margin:1em auto;padding:0;font-size:1.125em;line-height:2.625em}.swal2-popup .swal2-input{height:2.625em;padding:.75em}.swal2-popup .swal2-input[type=number]{max-width:10em}.swal2-popup .swal2-file{font-size:1.125em}.swal2-popup .swal2-textarea{height:6.75em;padding:.75em}.swal2-popup .swal2-select{min-width:50%;max-width:100%;padding:.375em .625em;color:#545454;font-size:1.125em}.swal2-popup .swal2-checkbox,.swal2-popup .swal2-radio{align-items:center;justify-content:center}.swal2-popup .swal2-checkbox label,.swal2-popup .swal2-radio label{margin:0 .6em;font-size:1.125em}.swal2-popup .swal2-checkbox input,.swal2-popup .swal2-radio input{margin:0 .4em}.swal2-popup .swal2-validationerror{display:none;align-items:center;justify-content:center;padding:.625em;background:#f0f0f0;color:#666;font-size:1em;font-weight:300;overflow:hidden}.swal2-popup .swal2-validationerror::before{display:inline-block;width:1.5em;min-width:1.5em;height:1.5em;margin:0 .625em;border-radius:50%;background-color:#f27474;color:#fff;font-weight:600;line-height:1.5em;text-align:center;content:'!';zoom:normal}@supports (-ms-accelerator:true){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@media all and (-ms-high-contrast:none),(-ms-high-contrast:active){.swal2-range input{width:100%!important}.swal2-range output{display:none}}@-moz-document url-prefix(){.swal2-close:focus{outline:2px solid rgba(50,100,150,.4)}}.swal2-icon{position:relative;justify-content:center;width:5em;height:5em;margin:1.25em auto 1.875em;border:.25em solid transparent;border-radius:50%;line-height:5em;cursor:default;box-sizing:content-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;zoom:normal}.swal2-icon-text{font-size:3.75em}.swal2-icon.swal2-error{border-color:#f27474}.swal2-icon.swal2-error .swal2-x-mark{position:relative;flex-grow:1}.swal2-icon.swal2-error [class^=swal2-x-mark-line]{display:block;position:absolute;top:2.3125em;width:2.9375em;height:.3125em;border-radius:.125em;background-color:#f27474}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left]{left:1.0625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right]{right:1em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-icon.swal2-warning{border-color:#facea8;color:#f8bb86}.swal2-icon.swal2-info{border-color:#9de0f6;color:#3fc3ee}.swal2-icon.swal2-question{border-color:#c9dae1;color:#87adbd}.swal2-icon.swal2-success{border-color:#a5dc86}.swal2-icon.swal2-success [class^=swal2-success-circular-line]{position:absolute;width:3.75em;height:7.5em;-webkit-transform:rotate(45deg);transform:rotate(45deg);border-radius:50%}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left]{top:-.4375em;left:-2.0635em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:3.75em 3.75em;transform-origin:3.75em 3.75em;border-radius:7.5em 0 0 7.5em}.swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right]{top:-.6875em;left:1.875em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);-webkit-transform-origin:0 3.75em;transform-origin:0 3.75em;border-radius:0 7.5em 7.5em 0}.swal2-icon.swal2-success .swal2-success-ring{position:absolute;top:-.25em;left:-.25em;width:100%;height:100%;border:.25em solid rgba(165,220,134,.3);border-radius:50%;z-index:2;box-sizing:content-box}.swal2-icon.swal2-success .swal2-success-fix{position:absolute;top:.5em;left:1.625em;width:.4375em;height:5.625em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg);z-index:1}.swal2-icon.swal2-success [class^=swal2-success-line]{display:block;position:absolute;height:.3125em;border-radius:.125em;background-color:#a5dc86;z-index:2}.swal2-icon.swal2-success [class^=swal2-success-line][class$=tip]{top:2.875em;left:.875em;width:1.5625em;-webkit-transform:rotate(45deg);transform:rotate(45deg)}.swal2-icon.swal2-success [class^=swal2-success-line][class$=long]{top:2.375em;right:.5em;width:2.9375em;-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.swal2-progresssteps{align-items:center;margin:0 0 1.25em;padding:0;font-weight:600}.swal2-progresssteps li{display:inline-block;position:relative}.swal2-progresssteps .swal2-progresscircle{width:2em;height:2em;border-radius:2em;background:#3085d6;color:#fff;line-height:2em;text-align:center;z-index:20}.swal2-progresssteps .swal2-progresscircle:first-child{margin-left:0}.swal2-progresssteps .swal2-progresscircle:last-child{margin-right:0}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep{background:#3085d6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progresscircle{background:#add8e6}.swal2-progresssteps .swal2-progresscircle.swal2-activeprogressstep~.swal2-progressline{background:#add8e6}.swal2-progresssteps .swal2-progressline{width:2.5em;height:.4em;margin:0 -1px;background:#3085d6;z-index:10}[class^=swal2]{-webkit-tap-highlight-color:transparent}.swal2-show{-webkit-animation:swal2-show .3s;animation:swal2-show .3s}.swal2-show.swal2-noanimation{-webkit-animation:none;animation:none}.swal2-hide{-webkit-animation:swal2-hide .15s forwards;animation:swal2-hide .15s forwards}.swal2-hide.swal2-noanimation{-webkit-animation:none;animation:none}[dir=rtl] .swal2-close{right:auto;left:0}.swal2-animate-success-icon .swal2-success-line-tip{-webkit-animation:swal2-animate-success-line-tip .75s;animation:swal2-animate-success-line-tip .75s}.swal2-animate-success-icon .swal2-success-line-long{-webkit-animation:swal2-animate-success-line-long .75s;animation:swal2-animate-success-line-long .75s}.swal2-animate-success-icon .swal2-success-circular-line-right{-webkit-animation:swal2-rotate-success-circular-line 4.25s ease-in;animation:swal2-rotate-success-circular-line 4.25s ease-in}.swal2-animate-error-icon{-webkit-animation:swal2-animate-error-icon .5s;animation:swal2-animate-error-icon .5s}.swal2-animate-error-icon .swal2-x-mark{-webkit-animation:swal2-animate-error-x-mark .5s;animation:swal2-animate-error-x-mark .5s}@-webkit-keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes swal2-rotate-loading{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}</style><script charset="UTF-8" async="" src="https://api.geetest.com/gettype.php?gt=0d8d7ba8de4bdaf415547f5848e0895d&amp;callback=geetest_1607695480630"></script><script charset="UTF-8" async="" crossorigin="anonymous" src="https://static.geetest.com/static/js/fullpage.9.0.2.js"></script><script charset="UTF-8" src="https://api.geetest.com/get.php?gt=0d8d7ba8de4bdaf415547f5848e0895d&amp;challenge=a8f861b01a7c281dfb69286f5423f59b&amp;lang=zh-cn&amp;pt=0&amp;client_type=web&amp;w=cTnQawjrbVzy5(q672vlAhhrAu182UxgZQShkiE29BToewaxvZweM(LhbqI5UmZR5YP(0XDcuLu2rlsEIMYk2(a8Pbz22SCtabPA2vn)jKfXzA3IhF155Wy5GntLtweLGkz5tIq)dupmNYRGmzVfPrSTN4hZZxiC1DIq0qaTHd7JmVPPp3XSpiFuKANUG7V16ekq34nH97ya5W1dj(1oyKCB49Qq64E2())bXvlHavW6xT)WT7NBRP6U1yTU1xkIO3LOikczcH5YAXSSii0PlnK2PQA9ob84ndC5TsV)9rrQ9aHgJx8NXlxlwrpNGynca59fRzdHMFrITgxjzTo(gNHvXuCOJzpirq6kYOxJPkU9kGqcGq0l7CpsTvsnAbLi4PlB5q2LIuHfZV02mt9P463M60KhQ5t3RW7nsTNJbl4S7YfdYCE8TPYdW0aDSrq6J8Zlu8hIk)Y)RVtLkkxCNvZgPXfPYxSzUBFQb)ukHBd6tDzGXkQbH1U7wG64XHCFplRrNL6BcZ527z587ysgufL3sOHXgsgdmb)wDMrASWmb(dHKNsD6jnb0pPPoslcwk6rOIFA)pC3r8mjecocaGYqE5PplS3olGxzu)gR7W)Ix5uYRZ)tzvxkz1urV0iRW3OQsKQrgjfHe9CeDBQxt7VxnLtKdW8)7HvOiHfUwr07YN2Vig8sz4pmqQiv)HxkVScKdY9xmmW6v5hWzz7LH0rbMP9u89kHJLvcr9oLvz))96yL3Wru0nprUjWIxON3muHzrCYL5kvn0Zhin9t1q(cV7D2G)4Z2dLsS4R0mgJiOfHe(rMkI68yaeMWV7NiFjRjUybkec0xmmRX6AK8pyDX6MMyKHJP1IE9uJq7StQ6KNoDB435iThYEMjBUpUAJ0Hvg8IM(5(lGrfAmiCz4rehrUwonHf9965aTT7DF0ltk4WXWA(LGCV8tijLFlfzXf7f7zeaTHOqE7R4n(iOvx5Nr8lElmo9Ir(YcZmJVLX3bwPh(SgPYHg8IIt3653yfQnENriE8py0AmvX3DVjRdFQGE9is79qP943YIX)jWse2QGJK3CEsdaAKYBY29G8NiMqmJ5kE0VR0hr2yhTJqHT1arp25WFy0(yB5LAYliJlPaMtOE(q8lJtslQVNHQj74WDH32lBYCkGK2DK(uaY1giLoEnqMPhTEo0RaIlf0Y6EOWKMyu2mzT0ba29IdvGYN5iMHGqTmfIoJDqTLYgxnUU4lJj8MdENXwm(3fysGE(Wbz8qJGCMpJCkD9tSkaFtxnzOmxVW7at12WhOwy1y9kvB3inVrTzD836ib8tywm17UCFklY0YzZrZN(etzal3gKcoopLBC9DRW8zPEzyYR3hRyMHn3vf3ClTgqDFziKjhEGoEYIR(PbO2laaI)YULd(zLaYgOgubxT3(cFBPDOdfqOVjQUviJY4XhlWwayhLAf62ONCbbtjIy5WcLsHLFvrUf(XNics9L9Vw2ToKY15CI(c1x1)aewtdg)JXeLepsPT13oM))AVoz2DhFICvXfLRIDCabnmLI8OJ6hWhVy3sptOxH8Hrfqj9CsfqQHh0nEKcD1mJB7S8OnNKbvYUMUU4bRjqVf4iIJS(4vETiN4Es75bo0CQMkIjm1uD5xqUryTIUV5XTCvObWlsJ)WZElFtIuoslRwGhhjTJp1nIDMnQOkuBjJHE4XE4ODpnUzuXEDuz3XpC6(YHR6fyl)Kn1RTSy5t36VCgjGl5jLxUQh3URWvnW1UFPDRbk((ew2spsU(gz6V5Y0BIXw7V0R)Q0pD1crmRKM(s(09GdJb0eqKc2RTMAI7)(qvEeBPdDeBa)JG3odtG8J1yxhetexd4xGZFYIfCgqyHJGwEqavm2RxnBWdUd)u3QV013JDfabLxuugca0PQ)p)Va8nVxSzMMZMvyOcSRTCPqAjZ(o)oheAAeSt29sywDhngqV1OHnAtx1i4tFTadU1WJ9RN5fG2zgzFCsKigQZrm9pz3Sko5IZ2DwE0HRGiv5bceSdKWV0oSdAHmpa0VaSllV21vT2xb8xgEFmTdrabgquCoKySCkuIz1XTOeHYluOaOFSLIMugkqE8(0oh5AScgeka3MVzuFpARm1IAr7UP)DWVtRhqPW8WCu6dECt7aWHMjwqtZ2s.5904a468edd037edee5de0e1707339007a3c972297060a460480ca57646f2ef673a9fe9c8154f232c28e7d0f667cae01e65379d4c5b0d5cff61c1a04fbd09c6398b9f2b2e9e76c66cd00adee594bcdde366c1e7755ffc13e2063b84c2916825ef24417d408e9b7660435ea1093fbdd727a02efc5a52c4b470e93cff87ebeb117&amp;callback=geetest_1607695475987"></script><link href="https://static.geetest.com/static/wind/style_https.1.5.8.css" rel="stylesheet"></head>

<body>
<div id="app">
    <section class="section">
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
                    <div class="login-brand">
                        <img src="../picture/stisla-fill.svg" alt="logo" width="100" class="shadow-light rounded-circle">
                    </div>
                    <div class="card card-primary">
                        <div class="card-header">
                            <h4>注册</h4>
                        </div>
                        <div class="card-body">
                            <form action="javascript:void(0);" method="POST" class="needs-validation" novalidate="">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-sm-12 col-xs-12">
                                        <label for="name">昵称</label>
                                        <input id="name" type="text" class="form-control" name="name" required="" autofocus="">
                                        <div class="invalid-feedback">
                                            请填写昵称
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-6 col-sm-12 col-xs-12">
                                        <label for="email">邮箱</label>
                                        <div class="input-group">
                                            <input type="text" id="email" class="form-control col-7" required="">
                                            <select class="custom-select input-group-append col-5" id="email_postfix" required="" style="border-top-right-radius: .25rem;
                          border-bottom-right-radius: .25rem;">
                                                <option value="@qq.com" selected="">@qq.com</option>
                                                <option value="@gmail.com">@gmail.com</option>
                                                <option value="@outlook.com">@outlook.com</option>
                                                <option value="@163.com">@163.com</option>
                                                <option value="@126.com">@126.com</option>
                                                <option value="@yeah.net">@yeah.net</option>
                                                <option value="@foxmail.com">@foxmail.com</option>
                                                <option value="其他格式"></option>
                                            </select>
                                            <div class="invalid-feedback">
                                                请填写邮箱
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-lg-6 col-sm-12 col-xs-12">
                                        <label for="passwd" class="d-block">密码</label>
                                        <input id="passwd" type="password" class="form-control pwstrength" data-indicator="pwindicator" name="passwd" required="">

                                        <div id="pwindicator" class="pwindicator">
                                            <div class="bar"></div>
                                            <div class="label"></div>
                                        </div>

                                        <div class="invalid-feedback">
                                            请填写密码
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-6 col-sm-12 col-xs-12">
                                        <label for="repasswd" class="d-block">确认密码</label>
                                        <input id="repasswd" type="password" class="form-control" name="repasswd" required="">
                                        <div class="invalid-feedback">
                                            两次密码不一致
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="form-group col-lg-6 col-sm-12 col-xs-12">
                                        <label for="passwd" class="d-block">验证码</label>
                                        <input id="邮箱验证码" type="text" class="form-control" data-indicator="pwindicator" name="passwd" required="">

                                    </div>

                                    <div class="form-group col-lg-6 col-sm-12 col-xs-12">
                                        <label for="passwd" class="d-block">发送验证码</label>
                                        <button id="获取验证码" onclick="验证码()" class="btn btn-primary btn-lg btn-block">
                                            获取验证码
                                        </button>
                                    </div>
                                </div>



                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="agree" class="custom-control-input" id="agree" checked="checked" required="">
                                        <label class="custom-control-label" for="agree">注册即代表同意 <a href="regulations.jsp" target="blank">服务条款</a></label>
                                        <div class="invalid-feedback">
                                            请阅读服务条款并勾选
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button id="register-confirm" onclick="doSignUp()" class="btn btn-primary btn-lg btn-block">
                                        注册
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="mt-5 text-muted text-center">
                        已经有账号了？<a href="../index.jsp">马上登录 👉</a>
                    </div>

                    <div class="simple-footer">
                        Copyright © 2020 中乐乐
                        <div class="mt-2" id="copyright">音乐会 <a href="licence.jsp">许可证</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>



<script>
   var yzmyzm;
    function 验证码() {
        $.ajax({
            type: "POST",
            url: "/mail",
            dataType: "json",
            data: {
                email: $("#email").val()+$("#email_postfix").val(),
                roud:"0",
            },
            success: function (data) {
                if (data.ret == 1) {
                    yzmyzm=data.roud;
                    swal({
                        type: 'success',
                        title: '验证码已发送',
                        text: '如长时间未收到，请查看邮件垃圾箱',
                        showCloseButton: true,
                    })
                }else if(data.ret==3){
                    swal({
                            type: 'error',
                            title: '验证码为空',
                            text: '请注意填写',
                            showCloseButton: true,
                        }
                    )
                }else if(data.ret==4){
                    swal({
                            type: 'error',
                            title: '验证码错误',
                            text: '请注意填写',
                            showCloseButton: true,
                        }
                    )
                }else {
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


</script>

<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/sweetalert2.all.min.js"></script>
<script>

    $("#email").blur(function (){
        var pd=document.getElementById('name').value;
        if(pd=='') $("#name").addClass("is-invalid");
        else{
            $("#name").removeClass("is-invalid")
            $("#name").addClass("is-valid")
        }
    })
    //判断账号框里是否为空

    $("#passwd").blur(function (){
        var pd=document.getElementById('email').value;
        if(pd=='') $("#email").addClass("is-invalid");
        else{
            $("#email").removeClass("is-invalid")
            $("#email").addClass("is-valid")
        }
    })
    //判断邮箱框里是否为空

    $("#repasswd").blur(function (){
        var pd=document.getElementById('passwd').value;
        if(pd=='') $("#passwd").addClass("is-invalid");
        else{
            $("#passwd").removeClass("is-invalid")
            $("#passwd").addClass("is-valid")
        }
    })
    //判断密码1框里是否为空

    $("#repasswd").blur(function (){
        var pd=document.getElementById('repasswd').value;
        if(pd=='') $("#repasswd").addClass("is-invalid");
        else if(pd!=document.getElementById('passwd').value){
            $("#repasswd").addClass("is-invalid")
        }
        else{
            $("#repasswd").removeClass("is-invalid")
            $("#repasswd").addClass("is-valid")
        }
    })
    //判断密码2框里是否为空

    $(".pwstrength").pwstrength({
        texts: ['超级弱鸡', '弱鸡', '一般般', '有点强', '很强👌']
    });



    function login(email,passwd) {
        $.ajax({
            type:"POST",
            url:"/ss",
            dataType:"json",
            data:{
                email: email,
                passwd: passwd,
                // code: '',
                remember_me: 1
            },
            success: function (data) {
                window.location.assign('../Users/mains.jsp')
            }
        });
    }


    function register() {
        // vaildation
        if(yzmyzm!=document.querySelector("#邮箱验证码").value){
            swal('出错了', '验证码不正确', 'error');
            return false
        }
        if (
            !$("#name").val() ||
            !$("#email").val() ||
            !$("#passwd").val() ||
            !$("#repasswd").val()
        ){
            swal('出错了', '密码或邮箱不正确', 'error');
            return false
        };


        var email = $("#email").val()+$("#email_postfix").val();

        $.ajax({
            type: "POST",
            url: "/zhu",
            dataType: "json",
            data: {
                email: email,
                name: $("#name").val(),
                passwd: $("#passwd").val(),
                repasswd: $("#repasswd").val(),
                roud:"1",
            },
            success: function (data) {
                if (data.ret == 1) {
                    document.getElementById("email").value="";
                    document.getElementById("passwd").value="";
                    document.getElementById("name").value="";
                    document.getElementById("repasswd").value="";
                    swal({
                        type: 'success',
                        title: '注册成功',
                        showCloseButton: true,
                        onClose: () => {
                            login(email, $("#passwd").val());
                        }
                    })
                } else {
                    swal('出错了', '邮箱已存在', 'error');
                }
            }
        });
    }


    $("html").keydown(function (event) {
        if (event.keyCode == 13) {
            register()
        }
    });
    //监听按钮  键盘回车后

    function doSignUp(){
        register()
    }
</script>

<script src="../js/jquery.pwstrength.min.js"></script>

<script type="text/javascript">
    var passwd = document.getElementById("passwd");
    passwd.onkeyup=function () {
        var ans=passwdjudge(this.value);
        if(ans==1){
            document.querySelector("#pwindicator").className="pwindicator pw-weak";
            document.querySelector("#pwindicator > div.label").innerText='弱逼';
        }else if(ans==2){
            document.querySelector("#pwindicator").className="pwindicator pw-mediocre";
            document.querySelector("#pwindicator > div.label").innerText='一般（提裤子）';
        }else if(ans==3){
            document.querySelector("#pwindicator").className="pwindicator pw-strong";
            document.querySelector("#pwindicator > div.label").innerText='牛逼';
        }else if(ans==4){
            document.querySelector("#pwindicator").className="pwindicator pw-very-strong";
            document.querySelector("#pwindicator > div.label").innerText='你他妈能记住不能';
        }else {
            document.querySelector("#pwindicator").className="pwindicator";
            document.querySelector("#pwindicator > div.label").innerText='密码至少六位';
        }
    }
    function passwdjudge(x){
        var len=x.length,num=0,dig=0,fh=0,bdig=0;
        if(len<6)return 0;
        for(var i=0;i<len;i++){
            if(x[i]>='0'&&x[i]<='9')num=1;
            else if((x[i]>='a'&&x[i]<='z'))dig=1;
            else if((x[i]>='A'&&x[i]<='Z'))bdig=1;
            else if(x[i]!=' ')fh=1;
        }
        return num+dig+fh+bdig;
    }
</script>
</body></html>
