.class public Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/v;


# instance fields
.field private final a:Lcom/umeng/analytics/onlineconfig/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/analytics/c;

.field private d:Lu/aly/n;

.field private e:Lu/aly/ad;

.field private f:Lu/aly/z;

.field private g:Lu/aly/o;

.field private h:Lu/aly/l;

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/umeng/analytics/onlineconfig/a;

    invoke-direct {v0}, Lcom/umeng/analytics/onlineconfig/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Lu/aly/n;

    invoke-direct {v0}, Lu/aly/n;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/n;

    .line 31
    new-instance v0, Lu/aly/ad;

    invoke-direct {v0}, Lu/aly/ad;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    .line 32
    new-instance v0, Lu/aly/z;

    invoke-direct {v0}, Lu/aly/z;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/z;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    .line 39
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/n;

    invoke-virtual {v0, p0}, Lu/aly/n;->a(Lu/aly/v;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Lu/aly/o;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/o;

    return-object p0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->h(Landroid/content/Context;)V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    .line 45
    new-instance p1, Lu/aly/o;

    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lu/aly/o;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/o;

    .line 46
    iget-object p1, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/d;->h:Lu/aly/l;

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/umeng/analytics/d;->i:Z

    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/z;

    invoke-virtual {v0, p1}, Lu/aly/z;->c(Landroid/content/Context;)V

    .line 197
    iget-object p1, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-interface {p1}, Lcom/umeng/analytics/c;->a()V

    :cond_0
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/z;

    invoke-virtual {v0, p1}, Lu/aly/z;->d(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->a(Landroid/content/Context;)V

    .line 204
    iget-object p1, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-interface {p1}, Lcom/umeng/analytics/c;->b()V

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/d;->h:Lu/aly/l;

    invoke-virtual {p1}, Lu/aly/l;->b()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/z;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/z;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 77
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "MobclickAgent"

    const-string v0, "unexpected null context in onResume"

    .line 87
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;)V

    .line 93
    :try_start_0
    invoke-static {p1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {p1, v0}, Lu/aly/l;->a(Lcom/umeng/analytics/onlineconfig/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "MobclickAgent"

    const-string p2, "unexpected null context in reportError"

    .line 169
    invoke-static {p1, p2}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/d;->h:Lu/aly/l;

    new-instance v0, Lu/aly/ag;

    invoke-direct {v0, p2}, Lu/aly/ag;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lu/aly/ag;->a(Z)Lu/aly/ag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu/aly/l;->a(Lu/aly/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string v0, ""

    .line 177
    invoke-static {p2, v0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 238
    :cond_0
    new-instance p1, Lcom/umeng/analytics/d$3;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/analytics/d$3;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, ""

    .line 244
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6

    .line 219
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/o;

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lu/aly/o;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, ""

    .line 222
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/o;

    invoke-virtual {p1, p2, p3}, Lu/aly/o;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, ""

    .line 158
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 262
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 263
    :cond_0
    new-instance p1, Lcom/umeng/analytics/d$5;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/umeng/analytics/d$5;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, ""

    .line 269
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/d;->g:Lu/aly/o;

    invoke-virtual {p1, p2, p3, p4, p5}, Lu/aly/o;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, ""

    .line 231
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/umeng/analytics/d;->h:Lu/aly/l;

    new-instance v0, Lu/aly/ag;

    invoke-direct {v0, p2}, Lu/aly/ag;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lu/aly/ag;->a(Z)Lu/aly/ag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu/aly/l;->a(Lu/aly/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string v0, ""

    .line 190
    invoke-static {p2, v0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/umeng/analytics/c;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    return-void
.end method

.method a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 82
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    invoke-virtual {v0}, Lu/aly/ad;->a()V

    .line 301
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/l;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/umeng/analytics/d;->h:Lu/aly/l;

    new-instance v1, Lu/aly/ag;

    invoke-direct {v1, p1}, Lu/aly/ag;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lu/aly/l;->b(Lu/aly/q;)V

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->h(Landroid/content/Context;)V

    .line 306
    iget-object p1, p0, Lcom/umeng/analytics/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MobclickAgent"

    const-string v1, "Exception in onAppCrash"

    .line 311
    invoke-static {v0, v1, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "MobclickAgent"

    const-string v0, "unexpected null context in onResume"

    .line 103
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ad;->a(Ljava/lang/String;)V

    .line 112
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 114
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$1;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MobclickAgent"

    const-string v1, "Exception occurred in Mobclick.onResume(). "

    .line 121
    invoke-static {v0, v1, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 250
    :try_start_0
    new-instance p1, Lcom/umeng/analytics/d$4;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/analytics/d$4;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, ""

    .line 256
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .line 63
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "MobclickAgent"

    const-string v0, "unexpected null context in onPause"

    .line 128
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ad;->b(Ljava/lang/String;)V

    .line 137
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 139
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$2;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MobclickAgent"

    const-string v1, "Exception occurred in Mobclick.onRause(). "

    .line 145
    invoke-static {v0, v1, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 275
    :try_start_0
    new-instance p1, Lcom/umeng/analytics/d$6;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/analytics/d$6;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, ""

    .line 281
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/d;->h:Lu/aly/l;

    invoke-virtual {p1}, Lu/aly/l;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MobclickAgent"

    const-string v1, ""

    .line 213
    invoke-static {v0, v1, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method e(Landroid/content/Context;)V
    .locals 1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/ad;

    invoke-virtual {v0}, Lu/aly/ad;->a()V

    .line 288
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->h(Landroid/content/Context;)V

    .line 289
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
