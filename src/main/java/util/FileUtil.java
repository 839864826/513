package util;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;

import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.model.PutObjectResult;
import com.qcloud.cos.region.Region;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


//头像上传云服务器

public class FileUtil {

    public static Map<String,Object> FileUpload(HttpServletRequest request){
        Map<String,Object> map = new HashMap<String,Object>();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("UTF-8");
        try {
            List<FileItem> items = upload.parseRequest(request);
            Iterator it= items.iterator();
            while(it.hasNext()){
                DiskFileItem item = (DiskFileItem) it.next();
                if(item.isFormField()){
                    map.put(item.getFieldName(),item.getString("UTF-8"));
                }else{
                    map.put("productpictureurl", item.getStoreLocation().getPath());//本地路径
                    File pic = new File(UUID.randomUUID()+".jpg");
                    item.write(pic);
                    map.put("pic",upcos(pic));

                }
            }
            return map;
        } catch (Exception e) {

            e.printStackTrace();
        }
        map.put("pic"," ");
        return map;
    }
    public static String upcos(File localFile){
        String secretId = "AKIDkFbhVjQCSQ0MPBoufANDrjTqytZymbhX";
        String secretKey = "iyz6h2PXkrjXDdkjhNp1wc6KHAKBm46o";
        COSCredentials cred = new BasicCOSCredentials(secretId, secretKey);
        Region region = new Region("ap-nanjing");
        ClientConfig clientConfig = new ClientConfig(region);
        COSClient cosClient = new COSClient(cred, clientConfig);
        String bucketName = "gzxgzx-1256650399";
        String key =localFile.getName();
        PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName, key, localFile);
        PutObjectResult putObjectResult = cosClient.putObject(putObjectRequest);

        localFile.delete();
        cosClient.shutdown();
        return "https://gzxgzx-1256650399.cos.ap-nanjing.myqcloud.com/"+localFile.getName();

    }
}

