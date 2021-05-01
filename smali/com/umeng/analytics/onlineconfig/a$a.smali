.class Lcom/umeng/analytics/onlineconfig/a$a;
.super Lu/aly/bx;
.source "OnlineConfigAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/onlineconfig/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/onlineconfig/a;

.field private final e:Ljava/lang/String;

.field private f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$a;->a:Lcom/umeng/analytics/onlineconfig/a;

    const/4 p1, 0x0

    .line 228
    invoke-direct {p0, p1}, Lu/aly/bx;-><init>(Ljava/lang/String;)V

    const-string p1, "http://oc.umeng.com/v2/check_config_update"

    .line 224
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$a;->e:Ljava/lang/String;

    const-string p1, "http://oc.umeng.com/v2/check_config_update"

    .line 229
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$a;->d:Ljava/lang/String;

    .line 230
    invoke-direct {p0, p2}, Lcom/umeng/analytics/onlineconfig/a$a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$a;->f:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "online_config"

    .line 250
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appkey"

    .line 251
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version_code"

    .line 252
    invoke-static {p1}, Lu/aly/bq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package"

    .line 253
    invoke-static {p1}, Lu/aly/bq;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    .line 254
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "idmd5"

    .line 256
    invoke-static {p1}, Lu/aly/bq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/cd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    .line 257
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->c()[I

    move-result-object v1

    const-string v2, "report_policy"

    const/4 v3, 0x0

    .line 260
    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "last_config_time"

    .line 261
    iget-object v2, p0, Lcom/umeng/analytics/onlineconfig/a$a;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-static {v2, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p1, "MobclickAgent"

    const-string v0, "exception in onlineConfigInternal"

    .line 264
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$a;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$a;->d:Ljava/lang/String;

    return-object v0
.end method
