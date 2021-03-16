package util;


import com.qcloud.cos.model.*;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;

public class PutObjectRequest extends AbstractPutObjectRequest implements Serializable {
    public PutObjectRequest(String bucketName, String key, File file) {
        super(bucketName, key, file);
    }

    public PutObjectRequest(String bucketName, String key, InputStream input, ObjectMetadata metadata) {
        super(bucketName, key, input, metadata);
    }

    public com.qcloud.cos.model.PutObjectRequest clone() {
        return (com.qcloud.cos.model.PutObjectRequest)this.copyPutObjectBaseTo(new com.qcloud.cos.model.PutObjectRequest(this.getBucketName(), this.getKey(), this.getFile()));
    }

    public com.qcloud.cos.model.PutObjectRequest withBucketName(String bucketName) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withBucketName(bucketName);
    }

    public com.qcloud.cos.model.PutObjectRequest withKey(String key) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withKey(key);
    }

    public com.qcloud.cos.model.PutObjectRequest withStorageClass(String storageClass) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withStorageClass(storageClass);
    }

    public com.qcloud.cos.model.PutObjectRequest withStorageClass(StorageClass storageClass) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withStorageClass(storageClass);
    }

    public com.qcloud.cos.model.PutObjectRequest withFile(File file) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withFile(file);
    }

    public com.qcloud.cos.model.PutObjectRequest withMetadata(ObjectMetadata metadata) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withMetadata(metadata);
    }

    public com.qcloud.cos.model.PutObjectRequest withCannedAcl(CannedAccessControlList cannedAcl) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withCannedAcl(cannedAcl);
    }

    public com.qcloud.cos.model.PutObjectRequest withAccessControlList(AccessControlList accessControlList) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withAccessControlList(accessControlList);
    }

    public com.qcloud.cos.model.PutObjectRequest withInputStream(InputStream inputStream) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withInputStream(inputStream);
    }

    public com.qcloud.cos.model.PutObjectRequest withRedirectLocation(String redirectLocation) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withRedirectLocation(redirectLocation);
    }

    public com.qcloud.cos.model.PutObjectRequest withSSECustomerKey(SSECustomerKey sseKey) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withSSECustomerKey(sseKey);
    }

    public com.qcloud.cos.model.PutObjectRequest withSSECOSKeyManagementParams(SSECOSKeyManagementParams sseCOSKeyManagementParams) {
        return (com.qcloud.cos.model.PutObjectRequest)super.withSSECOSKeyManagementParams(sseCOSKeyManagementParams);
    }
}
