.class public Lcom/umeng/analytics/onlineconfig/a;
.super Ljava/lang/Object;
.source "OnlineConfigAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/onlineconfig/a$d;,
        Lcom/umeng/analytics/onlineconfig/a$c;,
        Lcom/umeng/analytics/onlineconfig/a$a;,
        Lcom/umeng/analytics/onlineconfig/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "type"

.field public static final b:Ljava/lang/String; = "package"

.field public static final c:Ljava/lang/String; = "channel"

.field public static final d:Ljava/lang/String; = "idmd5"

.field public static final e:Ljava/lang/String; = "version_code"

.field public static final f:Ljava/lang/String; = "appkey"

.field public static final g:Ljava/lang/String; = "sdk_version"

.field private static final k:J = 0x927c0L


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private l:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

.field private m:Lcom/umeng/analytics/onlineconfig/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "last_config_time"

    .line 27
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->h:Ljava/lang/String;

    const-string v0, "report_policy"

    .line 28
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->i:Ljava/lang/String;

    const-string v0, "online_config"

    .line 30
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->l:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    .line 42
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->m:Lcom/umeng/analytics/onlineconfig/c;

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)J
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->b(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;)Lcom/umeng/analytics/onlineconfig/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/umeng/analytics/onlineconfig/a;->m:Lcom/umeng/analytics/onlineconfig/c;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 2

    .line 89
    iget v0, p2, Lcom/umeng/analytics/onlineconfig/b;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p1

    iget v0, p2, Lcom/umeng/analytics/onlineconfig/b;->c:I

    iget p2, p2, Lcom/umeng/analytics/onlineconfig/b;->d:I

    invoke-virtual {p1, v0, p2}, Lcom/umeng/analytics/h;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->l:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->l:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;->onDataReceived(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)J
    .locals 3

    .line 84
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "oc_mdf_told"

    const-wide/16 v1, 0x0

    .line 85
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 3

    .line 95
    iget-object v0, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 103
    :try_start_0
    iget-object p2, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    .line 106
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "MobclickAgent"

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get online setting params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string v0, "save online config params"

    .line 118
    invoke-static {p2, v0, p1}, Lu/aly/br;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->b(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->l:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "MobclickAgent"

    const-string v0, "unexpected null context in updateOnlineConfig"

    .line 53
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/analytics/onlineconfig/a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/onlineconfig/a$b;-><init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MobclickAgent"

    const-string v0, "exception in updateOnlineConfig"

    .line 59
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a;->l:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    return-void
.end method

.method public a(Lcom/umeng/analytics/onlineconfig/c;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a;->m:Lcom/umeng/analytics/onlineconfig/c;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->m:Lcom/umeng/analytics/onlineconfig/c;

    return-void
.end method
