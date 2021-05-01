.class public Lcom/umeng/analytics/MobclickAgent;
.super Ljava/lang/Object;
.source "MobclickAgent.java"


# static fields
.field private static final a:Ljava/lang/String; = "input map is null"

.field private static final b:Lcom/umeng/analytics/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/umeng/analytics/d;

    invoke-direct {v0}, Lcom/umeng/analytics/d;-><init>()V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flush(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static getAgent()Lcom/umeng/analytics/d;
    .locals 1

    .line 71
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    return-object v0
.end method

.method public static getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 437
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 438
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 205
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    .line 215
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 241
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "label is null or empty"

    .line 242
    invoke-static {p0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "label is null or empty"

    .line 227
    invoke-static {p0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "input map is null"

    .line 258
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 342
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 360
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "duration is not valid in onEventDuration"

    .line 274
    invoke-static {p0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 288
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "label is null or empty"

    .line 289
    invoke-static {p0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    const-string p0, "MobclickAgent"

    const-string p1, "duration is not valid in onEventDuration"

    .line 293
    invoke-static {p0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "duration is not valid in onEventDuration"

    .line 308
    invoke-static {p0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "MobclickAgent"

    const-string p1, "input map is null"

    .line 312
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 351
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 369
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 328
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    move-object v4, p2

    goto :goto_0

    .line 330
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v4, v0

    :goto_0
    const-string p2, "__ct__"

    .line 332
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v1, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public static onKVEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "input map is null"

    .line 380
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 383
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 392
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1

    .line 484
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "MobclickAgent"

    const-string v0, "pageName is null or empty"

    .line 115
    invoke-static {p0, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "MobclickAgent"

    const-string v0, "pageName is null or empty"

    .line 104
    invoke-static {p0, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    .line 131
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "MobclickAgent"

    const-string v0, "unexpected null context in onResume"

    .line 140
    invoke-static {p0, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "unexpected null context in onResume"

    .line 155
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Ljava/lang/String;)V

    .line 165
    invoke-static {p2}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 167
    sget-object p1, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "MobclickAgent"

    const-string p1, "unexpected empty appkey in onResume"

    .line 160
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "context is null in onShareEvent"

    .line 407
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "3"

    .line 410
    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 411
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    return-void
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "MobclickAgent"

    const-string p1, "context is null in onShareEvent"

    .line 422
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "3"

    .line 425
    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 426
    invoke-static {p0, p1}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V

    return-void
.end method

.method public static openActivityDurationTrack(Z)V
    .locals 0

    .line 93
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 177
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 185
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setAutoLocation(Z)V
    .locals 0

    return-void
.end method

.method public static setCatchUncaughtExceptions(Z)V
    .locals 0

    .line 42
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 124
    sput-boolean p0, Lu/aly/br;->a:Z

    .line 125
    sput-boolean p0, Lcom/umeng/analytics/social/e;->v:Z

    return-void
.end method

.method public static setEnableEventBuffer(Z)V
    .locals 0

    .line 60
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    return-void
.end method

.method public static setOnlineConfigureListener(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V

    return-void
.end method

.method public static setOpenGLContext(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 80
    invoke-static {p0}, Lu/aly/bq;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object p0

    .line 81
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 82
    aget-object v0, p0, v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const/4 v0, 0x1

    .line 83
    aget-object p0, p0, v0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .locals 0

    .line 53
    sput-wide p0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    return-void
.end method

.method public static setUserID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/Gender;I)V
    .locals 0

    return-void
.end method

.method public static setWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;)V
    .locals 1

    .line 464
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Ljava/lang/String;)V

    .line 455
    invoke-static {p2}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 457
    sget-object p1, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "MobclickAgent"

    const-string p1, "unexpected empty appkey in onResume"

    .line 450
    invoke-static {p0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
