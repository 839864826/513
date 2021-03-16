package util;

import com.qcloud.cos.internal.ObjectExpirationResult;
import com.qcloud.cos.internal.SSEResultBase;
import com.qcloud.cos.model.ObjectMetadata;

import java.io.Serializable;
import java.util.Date;

public class PutObjectResult extends SSEResultBase implements ObjectExpirationResult, Serializable {
    private static final long serialVersionUID = -2210897720269365495L;
    private String requestId;
    private String dateStr;
    private String versionId;
    private String eTag;
    private Date expirationTime;
    private String expirationTimeRuleId;
    private String contentMd5;
    private ObjectMetadata metadata;
    private String crc64Ecma;

    public PutObjectResult() {
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }

    public String getDateStr() {
        return this.dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public void setVersionId(String versionId) {
        this.versionId = versionId;
    }

    public String getETag() {
        return this.eTag;
    }

    public void setETag(String eTag) {
        this.eTag = eTag;
    }

    public Date getExpirationTime() {
        return this.expirationTime;
    }

    public void setExpirationTime(Date expirationTime) {
        this.expirationTime = expirationTime;
    }

    public String getExpirationTimeRuleId() {
        return this.expirationTimeRuleId;
    }

    public void setExpirationTimeRuleId(String expirationTimeRuleId) {
        this.expirationTimeRuleId = expirationTimeRuleId;
    }

    public void setContentMd5(String contentMd5) {
        this.contentMd5 = contentMd5;
    }

    public String getContentMd5() {
        return this.contentMd5;
    }

    public ObjectMetadata getMetadata() {
        return this.metadata;
    }

    public void setMetadata(ObjectMetadata metadata) {
        this.metadata = metadata;
    }

    public String getCrc64Ecma() {
        return this.crc64Ecma;
    }

    public void setCrc64Ecma(String crc64Ecma) {
        this.crc64Ecma = crc64Ecma;
    }
}
