package mail;


import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

//发送邮件
public class method {
    public static boolean send(String email,String pwd,int a){
        try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.transport.protocol", "smtp");
            props.put("mail.smtp.host", "smtp.qq.com");// smtp服务器地址
            Session session = Session.getInstance(props);
            Message msg = new MimeMessage(session);
            if(a==0){
                msg.setSubject("这是你的验证码");
                msg.setText("你好!这是你的注册验证码:"+pwd);//发的内容
            }else{
                msg.setSubject("这是你的密码");
                msg.setText("你好!这是你的新的密码:"+pwd);//发的内容
            }
            msg.setFrom(new InternetAddress("1852974658@qq.com"));//发件人邮箱(我的163邮箱)
            msg.setRecipient(Message.RecipientType.TO,
                    new InternetAddress(email)); //收件人邮箱(我的QQ邮箱)
            msg.saveChanges();
            Transport transport = session.getTransport();
            transport.connect("1852974658@qq.com", "cwwgkregshfibbhi");//发件人邮箱,授权码(可以在邮箱设置中获取到授权码的信息)
            transport.sendMessage(msg, msg.getAllRecipients());
            System.out.println("邮件发送成功...");
            transport.close();
            return true;
        }
        catch (Exception e){
            System.out.println("邮件发送失败...");
            return  false;
        }
    }
}
