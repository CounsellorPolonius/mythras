.class public Lu/aly/t;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lu/aly/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10.0.0.172"

    .line 42
    iput-object v0, p0, Lu/aly/t;->b:Ljava/lang/String;

    const/16 v0, 0x50

    .line 43
    iput v0, p0, Lu/aly/t;->c:I

    .line 49
    iput-object p1, p0, Lu/aly/t;->d:Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lu/aly/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu/aly/t;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Android"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "5.5.3"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    invoke-static {p1}, Lu/aly/bq;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-static {p1}, Lu/aly/bq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Z
    .locals 4

    .line 80
    iget-object v0, p0, Lu/aly/t;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 81
    iget-object v2, p0, Lu/aly/t;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lu/aly/t;->d:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 90
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "cmwap"

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_1
    return v3

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method private a([BLjava/lang/String;)[B
    .locals 7

    .line 107
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x2710

    .line 109
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    .line 110
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 111
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const-string v1, "X-Umeng-UTC"

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Umeng-Sdk"

    .line 115
    iget-object v3, p0, Lu/aly/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Msg-Type"

    const-string v3, "envelope"

    .line 116
    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lu/aly/t;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lu/aly/t;->b:Ljava/lang/String;

    iget v5, p0, Lu/aly/t;->c:I

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 121
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 126
    :cond_0
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    int-to-long v5, p1

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 129
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 132
    iget-object p1, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {p1}, Lu/aly/r;->a()V

    .line 134
    :cond_1
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {v0}, Lu/aly/r;->b()V

    .line 138
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const-string v2, "Content-Type"

    .line 139
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    const-string v3, "application/thrift"

    .line 141
    invoke-static {v2, v3}, Lu/aly/cd;->a(Lorg/apache/http/Header;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "MobclickAgent"

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lu/aly/br;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_4

    if-eqz v2, :cond_4

    const-string v0, "MobclickAgent"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 150
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :try_start_1
    invoke-static {p1}, Lu/aly/cd;->b(Ljava/io/InputStream;)[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    invoke-static {p1}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    throw p2
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v1

    :cond_4
    return-object v1

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string v0, "IOException,Failed to send message."

    .line 169
    invoke-static {p2, v0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1

    :catch_1
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string v0, "ClientProtocolException,Failed to send message."

    .line 165
    invoke-static {p2, v0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1
.end method


# virtual methods
.method public a(Lu/aly/r;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lu/aly/t;->e:Lu/aly/r;

    return-void
.end method

.method public a([B)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    :goto_0
    sget-object v2, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 66
    sget-object v0, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lu/aly/t;->a([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {p1}, Lu/aly/r;->c()V

    goto :goto_1

    .line 73
    :cond_0
    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/t;->e:Lu/aly/r;

    invoke-interface {v2}, Lu/aly/r;->d()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
