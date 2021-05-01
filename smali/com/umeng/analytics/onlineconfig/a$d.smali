.class public Lcom/umeng/analytics/onlineconfig/a$d;
.super Lu/aly/by;
.source "OnlineConfigAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/onlineconfig/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 315
    invoke-direct {p0, p1}, Lu/aly/by;-><init>(Lorg/json/JSONObject;)V

    const-wide/16 v0, -0x1

    .line 311
    iput-wide v0, p0, Lcom/umeng/analytics/onlineconfig/a$d;->a:J

    .line 312
    iput-wide v0, p0, Lcom/umeng/analytics/onlineconfig/a$d;->b:J

    .line 316
    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a$d;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "last_config_time"

    const-wide/16 v1, -0x1

    .line 325
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/umeng/analytics/onlineconfig/a$d;->a:J

    const-string v0, "oc_interval"

    .line 326
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/umeng/analytics/onlineconfig/a$d;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MobclickAgent"

    const-string v1, "fail to parce online config response"

    .line 328
    invoke-static {v0, v1, p1}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
