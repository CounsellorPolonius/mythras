.class public Lcom/umeng/analytics/onlineconfig/b;
.super Lu/aly/by;
.source "OnlineConfigResponse.java"


# instance fields
.field public a:Lorg/json/JSONObject;

.field b:Z

.field c:I

.field d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lu/aly/by;-><init>(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/umeng/analytics/onlineconfig/b;->b:Z

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    .line 24
    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I

    const-string v0, "config_update"

    .line 26
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->e:Ljava/lang/String;

    const-string v0, "report_policy"

    .line 27
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->f:Ljava/lang/String;

    const-string v0, "online_params"

    .line 28
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->g:Ljava/lang/String;

    const-string v0, "report_interval"

    .line 29
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->h:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/b;->a(Lorg/json/JSONObject;)V

    .line 40
    invoke-direct {p0}, Lcom/umeng/analytics/onlineconfig/b;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 65
    iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "config_update"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "config_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "report_policy"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "report_policy"

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    const-string v0, "report_interval"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I

    goto :goto_0

    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, " online config fetch no report policy"

    .line 53
    invoke-static {v0, v1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "online_params"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/umeng/analytics/onlineconfig/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "MobclickAgent"

    const-string v1, "fail to parce online config response"

    .line 60
    invoke-static {v0, v1, p1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
