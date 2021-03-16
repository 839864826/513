package mysql;

import lombok.Data;


//个人信息的类
@Data
public class SysUser {

    private  String username;//邮箱
    private  String nickname;//昵称
    private  String pwd;//密码
    private  String head;//头像
    private  String birthday;//生日
    private  String sex;//性别
    private  String address;//家庭住址
    private  String phone;//手机号
    private  String signature;//个性签名

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getHead() {
        if(head==null||head.equals(null)||head.length()<1){
            return "https://gzxgzx-1256650399.cos.ap-nanjing.myqcloud.com/05849564-bcb2-4967-b811-4c71cefda825.jpg";}
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }
}
