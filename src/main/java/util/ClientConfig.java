package util;

import com.qcloud.cos.endpoint.DefaultEndpointResolver;
import com.qcloud.cos.endpoint.EndpointBuilder;
import com.qcloud.cos.endpoint.EndpointResolver;
import com.qcloud.cos.endpoint.RegionEndpointBuilder;
import com.qcloud.cos.endpoint.SuffixEndpointBuilder;
import com.qcloud.cos.http.HttpProtocol;
import com.qcloud.cos.region.Region;
import com.qcloud.cos.retry.BackoffStrategy;
import com.qcloud.cos.retry.PredefinedBackoffStrategies;
import com.qcloud.cos.retry.PredefinedRetryPolicies;
import com.qcloud.cos.retry.RetryPolicy;
import com.qcloud.cos.utils.VersionInfoUtils;

public class ClientConfig {
    private static final int DEFAULT_CONNECTION_REQUEST_TIMEOUT = -1;
    private static final int DEFAULT_CONNECTION_TIMEOUT = 30000;
    private static final int DEFAULT_SOCKET_TIMEOUT = 30000;
    private static final int DEFAULT_MAX_CONNECTIONS_COUNT = 1024;
    private static final long DEFAULT_SIGN_EXPIRED = 3600L;
    private static final String DEFAULT_USER_AGENT = VersionInfoUtils.getUserAgent();
    private static final int DEFAULT_READ_LIMIT = 262145;
    private static final int DEFAULT_RETRY_TIMES = 3;
    private int maxErrorRetry = 3;
    private static final RetryPolicy DEFAULT_RETRY_POLICY;
    public static final BackoffStrategy DEFAULT_BACKOFF_STRATEGY;
    private Region region;
    private HttpProtocol httpProtocol;
    private String endPointSuffix;
    private EndpointBuilder endpointBuilder;
    private EndpointResolver endpointResolver;
    private RetryPolicy retryPolicy;
    private BackoffStrategy backoffStrategy;
    private String httpProxyIp;
    private int httpProxyPort;
    private String proxyUsername;
    private String proxyPassword;
    private boolean useBasicAuth;
    private long signExpired;
    private int connectionRequestTimeout;
    private int connectionTimeout;
    private int socketTimeout;
    private int maxConnectionsCount;
    private String userAgent;
    private int readLimit;

    public ClientConfig() {
        this.httpProtocol = HttpProtocol.http;
        this.endPointSuffix = null;
        this.endpointBuilder = null;
        this.endpointResolver = new DefaultEndpointResolver();
        this.retryPolicy = DEFAULT_RETRY_POLICY;
        this.backoffStrategy = DEFAULT_BACKOFF_STRATEGY;
        this.httpProxyIp = null;
        this.httpProxyPort = 0;
        this.proxyUsername = null;
        this.proxyPassword = null;
        this.useBasicAuth = false;
        this.signExpired = 3600L;
        this.connectionRequestTimeout = -1;
        this.connectionTimeout = 30000;
        this.socketTimeout = 30000;
        this.maxConnectionsCount = 1024;
        this.userAgent = DEFAULT_USER_AGENT;
        this.readLimit = 262145;
        this.region = null;
        this.endpointBuilder = new RegionEndpointBuilder(this.region);
    }

    public ClientConfig(Region region) {
        this.httpProtocol = HttpProtocol.http;
        this.endPointSuffix = null;
        this.endpointBuilder = null;
        this.endpointResolver = new DefaultEndpointResolver();
        this.retryPolicy = DEFAULT_RETRY_POLICY;
        this.backoffStrategy = DEFAULT_BACKOFF_STRATEGY;
        this.httpProxyIp = null;
        this.httpProxyPort = 0;
        this.proxyUsername = null;
        this.proxyPassword = null;
        this.useBasicAuth = false;
        this.signExpired = 3600L;
        this.connectionRequestTimeout = -1;
        this.connectionTimeout = 30000;
        this.socketTimeout = 30000;
        this.maxConnectionsCount = 1024;
        this.userAgent = DEFAULT_USER_AGENT;
        this.readLimit = 262145;
        this.region = region;
        this.endpointBuilder = new RegionEndpointBuilder(this.region);
    }

    public Region getRegion() {
        return this.region;
    }

    public void setRegion(Region region) {
        this.region = region;
        this.endpointBuilder = new RegionEndpointBuilder(this.region);
    }

    public HttpProtocol getHttpProtocol() {
        return this.httpProtocol;
    }

    public void setHttpProtocol(HttpProtocol httpProtocol) {
        this.httpProtocol = httpProtocol;
    }

    public String getHttpProxyIp() {
        return this.httpProxyIp;
    }

    public void setHttpProxyIp(String httpProxyIp) {
        this.httpProxyIp = httpProxyIp;
    }

    public int getHttpProxyPort() {
        return this.httpProxyPort;
    }

    public void setHttpProxyPort(int httpProxyPort) {
        this.httpProxyPort = httpProxyPort;
    }

    public long getSignExpired() {
        return this.signExpired;
    }

    public void setSignExpired(long signExpired) {
        this.signExpired = signExpired;
    }

    public int getConnectionRequestTimeout() {
        return this.connectionRequestTimeout;
    }

    public void setConnectionRequestTimeout(int connectionRequestTimeout) {
        this.connectionRequestTimeout = connectionRequestTimeout;
    }

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public void setConnectionTimeout(int connectionTimeout) {
        this.connectionTimeout = connectionTimeout;
    }

    public int getSocketTimeout() {
        return this.socketTimeout;
    }

    public void setSocketTimeout(int socketTimeout) {
        this.socketTimeout = socketTimeout;
    }

    public int getMaxConnectionsCount() {
        return this.maxConnectionsCount;
    }

    public void setMaxConnectionsCount(int maxConnectionsCount) {
        this.maxConnectionsCount = maxConnectionsCount;
    }

    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    /** @deprecated */
    @Deprecated
    public String getEndPointSuffix() {
        return this.endPointSuffix;
    }

    /** @deprecated */
    @Deprecated
    public void setEndPointSuffix(String endPointSuffix) {
        this.endPointSuffix = endPointSuffix;
        this.endpointBuilder = new SuffixEndpointBuilder(endPointSuffix);
    }

    public int getReadLimit() {
        return this.readLimit;
    }

    public void setReadLimit(int readLimit) {
        this.readLimit = readLimit;
    }

    public EndpointBuilder getEndpointBuilder() {
        return this.endpointBuilder;
    }

    public void setEndpointBuilder(EndpointBuilder endpointBuilder) {
        this.endpointBuilder = endpointBuilder;
    }

    public EndpointResolver getEndpointResolver() {
        return this.endpointResolver;
    }

    public void setEndpointResolver(EndpointResolver endpointResolver) {
        this.endpointResolver = endpointResolver;
    }

    public String getProxyUsername() {
        return this.proxyUsername;
    }

    public void setProxyUsername(String proxyUsername) {
        this.proxyUsername = proxyUsername;
    }

    public String getProxyPassword() {
        return this.proxyPassword;
    }

    public void setProxyPassword(String proxyPassword) {
        this.proxyPassword = proxyPassword;
    }

    public void setUseBasicAuth(boolean useBasicAuth) {
        this.useBasicAuth = useBasicAuth;
    }

    public boolean useBasicAuth() {
        return this.useBasicAuth;
    }

    public int getMaxErrorRetry() {
        return this.maxErrorRetry;
    }

    public void setMaxErrorRetry(int maxErrorRetry) {
        this.maxErrorRetry = maxErrorRetry;
    }

    public RetryPolicy getRetryPolicy() {
        return this.retryPolicy;
    }

    public void setRetryPolicy(RetryPolicy retryPolicy) {
        this.retryPolicy = retryPolicy;
    }

    public BackoffStrategy getBackoffStrategy() {
        return this.backoffStrategy;
    }

    public void setBackoffStrategy(BackoffStrategy backoffStrategy) {
        this.backoffStrategy = backoffStrategy;
    }

    static {
        DEFAULT_RETRY_POLICY = PredefinedRetryPolicies.DEFAULT;
        DEFAULT_BACKOFF_STRATEGY = PredefinedBackoffStrategies.DEFAULT;
    }
}
