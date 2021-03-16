
var A = 0;
var a = 0;
function sousuo() {
    var word = document.querySelector("#sousuo").value;
    console.log(word);
    $.ajax({
        type:"POST",
        url:"https://api.bbbug.com/api/song/search",
        dataType: "json",
        data: {
            keyword: word,
            "access_token": "94d4856261d414ded0d690542f9f048352b694f310000094d4856261d414ded0d690542f9f048352b694f3",
            "plat": "pc",
            "version": 10000
        }, success :function (data) {

            var len=document.getElementsByClassName('bbbug_main_right_song_item').length;
            for(var i=len-1;i>=0;i--)document.getElementsByClassName('bbbug_main_right_song_item')[i].remove();//删除之前的信息

            var data1 = data.data;
            console.log("find"+data1.length+"data");
            console.log(data1[0]);
            var len=data1.length;
            for(var i=0;i<len;i++){
                var ds=data.data[i];
                console.log("tran"+ds);
                var child=document.createElement('div');
                child.className="bbbug_main_right_song_item";
                var c1=document.createElement('div');
                c1.className="bbbug_main_right_song_name";
                var c2=document.createElement('div');
                c2.className="bbbug_main_right_song_singer";
                var c3=document.createElement('div');
                c3.className="bbbug_main_right_song_controll";
                var s1=document.createElement('span');
                s1.title='搜索结果';
                s1.className="bbbug_singer_hover";
                s1.innerHTML=ds.name;
                c1.append(s1);
                var s2=document.createElement('span');
                s2.className="bbbug_singer_hover";
                s2.innerHTML=ds.singer;
                s2.title='歌手';
                c2.append(s2);
                var b1=document.createElement('button');
                b1.innerHTML='点歌';
                b1.setAttribute("id",ds.mid);


                // b1.setAttribute("onclick","getsong(\""+ds.mid+"\",\""+ds.name+"\",\""+ds.pic+"\",\""+ds.length+"\",\""+ds.singer+"\")");

                b1.setAttribute("onclick","getsong('"+ds.mid+"','"+ds.name+"','"+ds.pic+"','"+ds.length+"','"+ds.singer+"')");


                b1.className="bbbug_main_right_song_button bbbug_main_right_song_add";
                c3.append(b1);
                child.append(c1);
                child.append(c2);
                child.append(c3);


                document.querySelector("#SearchSongs > div > div > div.bbbug_main_right_song_list_search > div.bbbug_scroll").append(child);
            }
        },error:function (data) {
            console.log(data);
            alert("出错");
        }
    })
}//搜索歌曲

function getsong(mid,name,pic,length,singer) {


    console.log(mid+name+pic+length+singer);
    $.ajax({
        type:"POST",
        url:"/music",
        dataType: "json",
        data: {
            mid:mid,
            name:name,
            pic:pic,
            length:length,
            singer:singer
        }, success :function (data) {


        }
        })

}//保存歌单

function getqu() {


    $.ajax({
        type:"POST",
        url:"/musicd",
        dataType: "json",
        data: {

        }, success :function (data) {

            var lens=document.getElementsByClassName('zll').length;

            for(var i=lens-1;i>=0;i--)document.getElementsByClassName('zll')[i].remove();//删除之前的信息

            var len = data.length;

            for (var i = 0; i < len; i++) {
                var ds = data[i];
                console.log("tran" + ds);
                var child = document.createElement('div');
                child.className = "bbbug_main_right_song_item zll";

                child.id = ds.mid;
                child.setAttribute("singer",ds.singer);
                child.setAttribute("name",ds.name);
                child.setAttribute("length",ds.length);
                child.setAttribute("pic",ds.pic);


                var c1 = document.createElement('div');
                c1.className = "bbbug_main_right_song_name";
                var c2 = document.createElement('div');
                c2.className = "bbbug_main_right_song_singer";
                var c3 = document.createElement('div');
                c3.className = "bbbug_main_right_song_controll";
                var s1 = document.createElement('span');
                s1.title = '歌单';
                s1.className = "bbbug_singer_hover";
                s1.innerHTML = ds.name;
                c1.append(s1);
                var s2 = document.createElement('span');
                s2.className = "bbbug_singer_hover";
                s2.innerHTML = ds.singer;
                s2.title = '歌手';
                c2.append(s2);
                var b1 = document.createElement('button');
                b1.innerHTML = '哈哈';

                b1.setAttribute("onclick","music('"+ds.mid+"','"+ds.name+"','"+ds.pic+"','"+ds.length+"','"+ds.singer+"')");


                b1.className = "bbbug_main_right_song_button bbbug_main_right_song_add";
                c3.append(b1);
                child.append(c1);
                child.append(c2);
                child.append(c3);

                document.querySelector("#MySongList > div > div > div.bbbug_main_right_song_list > div.bbbug_scroll").append(child);

                //document.querySelector("#SearchSongs > div > div > div.bbbug_main_right_song_list_search > div.bbbug_scroll").append(child);
            }
        },error:function (data) {
                console.log(data);
                // alert("出错");
            }
    })

}//歌单的歌

function another(){


    music();

}//点击下一首歌


function zanting(){

    // document.querySelector("#zanting").paused?document.querySelector("#zanting").pause():document.querySelector("#zanting").play();

    if(document.querySelector("#music").paused)
    {
        document.querySelector("#music").play();
    }else{
        document.querySelector("#music").pause()
    }

}//歌曲暂停







function music(){


if(document.querySelector("#MySongList > div > div > div.bbbug_main_right_song_list > div.bbbug_scroll").getElementsByClassName('zll').length>1)
{
    $.ajax({
        url:"/musicj",
        data: {
        }, success :function () {
            document.querySelector("#MySongList > div > div > div.bbbug_main_right_song_list > div.bbbug_scroll").getElementsByClassName('zll')[0].remove();

            var doc=document.querySelector("#MySongList > div > div > div.bbbug_main_right_song_list > div.bbbug_scroll").getElementsByClassName('zll')[0];
            var id=doc.id;


            var pic=doc.getAttribute("pic");
            var name=doc.getAttribute("name");
            var singer=doc.getAttribute("singer");
            var length=doc.getAttribute("length");

            console.log(pic+name+singer);

            document.querySelector("#歌单 > div.bbbug_main_menu_song_user > font").innerHTML=singer;
            document.querySelector("#歌单 > div.bbbug_main_menu_song_title > marquee").innerHTML=name;
            document.querySelector("#music").src="https://api.bbbug.com//api/song/playurl?mid="+id;
            document.querySelector("#turn").src=pic;
            document.querySelector("#gzp").src=pic;
        }

    })
}else{
    swal('已经最后一首了', '不能下一首', 'error');
}

}

function picks(){

    var input = document.createElement("input");
    input.type = "file";
    input.click();
    input.onchange = function(){
        var file = input.files[0];
        var form = new FormData();
        form.append("file", file); //第一个参数是后台读取的请求key值
        form.append("fileName", file.name);
        form.append("issave", "no");
        form.append("email", emails); //实际业务的其他请求参数
        var xhr = new XMLHttpRequest();

        // var action = "http://localhost:8080/upload"; //上传服务的接口地址

        var action = "/upload"; //上传服务的接口地址

        xhr.open("POST", action);
        xhr.send(form); //发送表单数据
        xhr.onreadystatechange = function(){
            if(xhr.readyState==4 && xhr.status==200){
                var resultObj = JSON.parse(xhr.responseText);
                //处理返回的数据......
                if(resultObj.ret==1){

                    $.ajax({
                        type:"POST",
                        url:"/insertdh",
                        dataType:"JSON",
                        data:{
                            text: resultObj.pic,//获取文本
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
                    console.log("success");
                }else {
                    console.log('fail');
                }
            }
        }
    }

}//保存图片




//
// document.querySelector("#music").addEventListener("ended",function (){
//
//     music();
//
// },false);

function yljia(){
    if(document.querySelector("#music").volume>0.9)
    {

    }else {
        document.querySelector("#music").volume+=0.1;
    }


}//音量+

function yljian(){
    if(document.querySelector("#music").volume<0.1)
    {

    }else {
        document.querySelector("#music").volume-=0.1;
    }

}//音量-

function getde() {


    $.ajax({
        type:"POST",
        url:"/music",
        dataType: "json",
        data: {
        }, success :function (data) {

        }
    })

}//获取歌

function dialog2() {


    var t=document.querySelector("#dialog").value;
    document.querySelector("#dialog").value=null;
    if(t==null||t==''){

    }else{
        $.ajax({
            type:"POST",
            url:"/insertdh",
            dataType:"JSON",
            data:{
                text:t,//获取文本
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

}//点击发送信息按钮

function grxxbc() {

    $.ajax({
        type: "POST",
        url: "/userxg",
        dataType: "json",
        data: {
            email:emails,//邮箱
            // head:document.querySelector("#baidutouxiang").value,//头像
            nickname:document.querySelector("#nickname").value,//昵称
            signature:document.querySelector("#signature").value,//个性签名
            birthday:document.querySelector("#birthday").value,//生日
            sex:document.querySelector("#sex").value,//性别
            address:document.querySelector("#address").value,//家庭住址
            phone:document.querySelector("#phone").value,//手机号
            pwd:document.querySelector("#pwd").value,//密码
        },
        success: function (data) {

            if (data.ret == 1) {

                swal({
                    type: 'success',
                    title: '修改成功',
                    text: '修改成功',
                    showCloseButton: true,
                    onClose: () => {
                        window.location.href = "mains.jsp"
                    }
                })



            } else if(data.ret == 2) {
                swal('出错了', '出现了bug', 'error');
            }

        }

    });

}// 个人信息保存

function xb(){

    if(document.querySelector("#xbxz").class=="el-input el-input--medium el-input--suffix")
    {
        document.querySelector("#xbxz").class="el-input el-input--medium el-input--suffix is-focus"
        document.querySelector("#xbxz2").class="el-select__caret el-input__icon el-icon-arrow-up is-reverse"


    }else{
        document.querySelector("#xbxz").class="el-input el-input--medium el-input--suffix"
        document.querySelector("#xbxz2").class="el-select__caret el-input__icon el-icon-arrow-up"



    }

}//性别现选择

function easyUpload(){
    var input = document.createElement("input");
    input.type = "file";
    input.click();
    input.onchange = function(){
        var file = input.files[0];
        var form = new FormData();
        form.append("file", file); //第一个参数是后台读取的请求key值
        form.append("fileName", file.name);
        form.append("email", emails); //实际业务的其他请求参数
        var xhr = new XMLHttpRequest();
        var action = "../upload"; //上传服务的接口地址
        xhr.open("POST", action);
        xhr.send(form); //发送表单数据
        xhr.onreadystatechange = function(){
            if(xhr.readyState==4 && xhr.status==200){
                var resultObj = JSON.parse(xhr.responseText);
                //处理返回的数据......
                if(resultObj.ret==1){
                    document.querySelector("#head").src=resultObj.pic;
                    document.querySelector("#bj > div > div.bbbug_main_menu > div.bbbug_main_menu_head > img").src=resultObj.pic;
                    heads=resultObj.pic;
                    console.log("success");
                }else {
                    console.log('fail');
                }
            }
        }
    }
}//图片本地连接

function zuo() {

    if (a == 1) {
        if (document.querySelector("#RoomSetting").hidden == true) {

            document.querySelector("#RoomSetting").hidden = false;

            document.querySelector("#nickname").value = nicknames;
            document.querySelector("#pwd").value = pwds;
            // document.querySelector("#baidutouxiang").value = heads;
            document.querySelector("#birthday").value = birthdays;
            document.querySelector("#sex").value = sexs;
            document.querySelector("#address").value = addresss;
            document.querySelector("#phone").value = phones;
            document.querySelector("#signature").value = signatures;

            console.log(nicknames);
            console.log(pwds);
            // console.log(heads);
            console.log(birthdays);
            console.log(addresss);
            console.log(sexs);
            console.log(signatures);
            console.log(phones);


        } else {
            document.querySelector("#RoomSetting").hidden = true;
        }
    }else if (a == 2) {
        document.querySelector("#SearchSongs").hidden == true ? document.querySelector("#SearchSongs").hidden = false : document.querySelector("#SearchSongs").hidden = true;
    } else if (a == 3) {
        document.querySelector("#MySongList").hidden == true ? document.querySelector("#MySongList").hidden = false : document.querySelector("#MySongList").hidden = true;
    }
    // else if (a == 4) {
    //     document.querySelector("#RoomSetti").hidden == true ? document.querySelector("#RoomSetti").hidden = false : document.querySelector("#RoomSetti").hidden = true;
    // }
    if (A != a) guan();
    A = a;
}//左边的开关边框

function guan() {
    if (A == 1) {
        document.querySelector("#RoomSetting").hidden = true;
    } else if (A == 2) {
        document.querySelector("#SearchSongs").hidden = true;
    } else if (A == 3) {
        document.querySelector("#MySongList").hidden = true;
    }
    // else if (A == 4) {
    //     document.querySelector("#RoomSetti").hidden = true;
    // }
}//左边的关闭边框


function changeImg(data) {
    if(data.staus==2){
        joinroom(data.nickname)
    }else {


        var child = document.createElement('div');
        var child1 = document.createElement('div');
        var child2 = document.createElement('div');
        var child3 = document.createElement('div');

        if (emails === data.email) {
            child1.className = 'bbbug_main_chat_item bbbug_main_chat_text bbbug_main_chat_mine';
        } else {
            child1.className = 'bbbug_main_chat_item bbbug_main_chat_text';
        }
        child2.className = 'bbbug_main_chat_head';
        child3.className = 'el-dropdown';
        child3.tabIndex = 52;
        var img = document.createElement('img');
        img.src = data.head;

        img.setAttribute("aria-haspopup", "list");
        img.setAttribute("aria-controls", "dropdown-menu-1589");
        img.role = 'button';
        img.tabIndex = 0;
        child3.append(img);
        img.onerror = "";
        img.className = 'bbbug_main_chat_head_image el-dropdown-selfdefine';
        var ul = document.createElement('ul');
        ul.className = 'el-dropdown-menu el-popper';
        ul.id = 'dropdown-menu-1589';
        ul.setAttribute('style', 'display: none;');
        var li1 = document.createElement('li');
        var li2 = document.createElement('li');
        var li3 = document.createElement('li');
        li1.className = 'el-dropdown-menu__item';
        li2.className = 'el-dropdown-menu__item';
        li3.className = 'el-dropdown-menu__item';
        li1.tabIndex = -1;
        li2.tabIndex = -1;
        li3.tabIndex = -1
        li1.innerHTML = '@Ta';
        li2.innerHTML = '送歌';
        li3.innerHTML = '主页';
        ul.append(li1);
        ul.append(li2);
        ul.append(li3);
        child3.append(ul);
        var child4 = document.createElement('div');
        child4.className = 'bbbug_main_chat_name';
        child4.title = '';
        child4.innerHTML = data.nickname;
        var child5 = document.createElement('div');
        child5.className = 'bbbug_main_chat_context_menu';
        var child6 = document.createElement('div');
        var child7 = document.createElement('div');
        child7.className = 'bbbug_main_chat_content';

        var dlen=data.text.length;


            if(dlen>4&&data.text[dlen-1]==='g'&&data.text[dlen-2]==='p'&&data.text[dlen-3]==='j'&&data.text[dlen-4]==='.')
            {
                var img=document.createElement('img');
                img.src=data.text;
                img.className="bbbug_main_chat_img";
                img.setAttribute("data-pswp-uid","19");
                img.setAttribute("style","width: 200px;");
                child7.append(img);
            }
            else if(dlen>4&&data.text[dlen-1]==='g'&&data.text[dlen-2]==='n'&&data.text[dlen-3]==='p'&&data.text[dlen-4]==='.'){
                var img=document.createElement('img');
                img.src=data.text;
                img.className="bbbug_main_chat_img";
                img.setAttribute("data-pswp-uid","19");
                img.setAttribute("style","width: 50px;");
                child7.append(img);
            }
            else child7.innerHTML = data.text;




        child6.append(child7);
        child5.append(child6);
        var child8 = document.createElement('div');
        child8.className = 'bbbug_main_chat_name_time';


        // var obj = new Date();

        child8.innerHTML = data.time;

        // child8.innerHTML = jsrq(obj.getTime() - new Date(data.time)+50400000);


        child2.append(child3);
        child1.append(child2);
        child1.append(child4);
        child1.append(child5);
        child1.append(child8);
        child.append(child1);
        child.className = 'chats';
        child.id=data.id;
        document.querySelector("#bbbug_main_chat_history").append(child);
    }


}
//说话信息

function joinroom(data) {
    var x=document.createElement('div');
    var child=document.createElement('div');
    child.className="bbbug_main_chat_system";
    var span=document.createElement('span');
    span.className="bbbug_main_chat_system_text";
    span.innerText="用户 "+data+" 进入房间";
    child.append(span);
    document.querySelector("#bbbug_main_chat_history").append(child);

}//进入房间提示


function hond() {
    a = 1;
    zuo();

}//点击头像

function anhei() {

    document.querySelector("#anhei").className==''?document.querySelector("#anhei").className='bbbug_dark':document.querySelector("#anhei").className='';

}//暗黑


function 歌单() {

    document.querySelector("#歌单").hidden==true?document.querySelector("#歌单").hidden=false:document.querySelector("#歌单").hidden=true;

}

function ge() {
    a = 2;
    zuo();
}//点击歌曲

function gedan() {
    a = 3;
    zuo();
}//点击歌单

// function sys() {
//     a = 4;
//     zuo();
// }//点击设置

function bj(){
    document.querySelector("#bj").hidden == true ? document.querySelector("#bj").hidden = false : document.querySelector("#bj").hidden = true;
}//背景

function bq(){
    document.querySelector("#bq").hidden == true ? document.querySelector("#bq").hidden = false : document.querySelector("#bq").hidden = true;
}//表情

function dh(){
    document.querySelector("#bq").hidden = true;

}//对话框点击


function inpt(){
    document.querySelector("#bq").hidden = true;
}//输入框点击


function tuiqx(){
    document.querySelector("#tui").hidden =true;
}//取消推出

function tuitc(){
    window.location.href = "../index.jsp";
}//退出登录

function ztc(){
    document.querySelector("#tui").hidden =false;
}//出现确定退出界面

function jsrq(sec){
    sec=parseInt(sec/1000);
    if(sec<60){
        return sec+'秒前';
    } else{
        sec=parseInt(sec/60);
        if(sec<60){
            return sec+'分前';
        }else {
            sec=parseInt(sec/60);
            return sec+"时前";
        }
    }

}