.class Lcom/umeng/analytics/onlineconfig/a$c;
.super Lu/aly/bx;
.source "OnlineConfigAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/onlineconfig/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/onlineconfig/a;

.field private final e:Ljava/lang/String;

.field private f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$c;->a:Lcom/umeng/analytics/onlineconfig/a;

    const/4 p1, 0x0

    .line 278
    invoke-direct {p0, p1}, Lu/aly/bx;-><init>(Ljava/lang/String;)V

    const-string p1, "http://oc.umeng.com/v2/get_update_time"

    .line 274
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$c;->e:Ljava/lang/String;

    const-string p1, "http://oc.umeng.com/v2/get_update_time"

    .line 279
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$c;->d:Ljava/lang/String;

    .line 280
    invoke-direct {p0, p2}, Lcom/umeng/analytics/onlineconfig/a$c;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$c;->f:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 291
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appkey"

    .line 293
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version_code"

    .line 294
    invoke-static {p1}, Lu/aly/bq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p1, "MobclickAgent"

    const-string v0, "exception in onlineConfigInternal"

    .line 296
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$c;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$c;->d:Ljava/lang/String;

    return-object v0
.end method
