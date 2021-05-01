.class public Lu/aly/ac;
.super Ljava/lang/Object;
.source "TrafficTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "uptr"

.field private static final b:Ljava/lang/String; = "dntr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/bm;
    .locals 17

    const/4 v0, 0x0

    .line 25
    :try_start_0
    new-instance v1, Lu/aly/bm;

    invoke-direct {v1}, Lu/aly/bm;-><init>()V

    .line 27
    invoke-static/range {p0 .. p0}, Lu/aly/ac;->b(Landroid/content/Context;)[J

    move-result-object v2

    const/4 v3, 0x0

    .line 28
    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    const/4 v4, 0x1

    aget-wide v8, v2, v4

    cmp-long v5, v8, v6

    if-gtz v5, :cond_0

    goto :goto_2

    .line 30
    :cond_0
    invoke-static/range {p0 .. p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "uptr"

    const-wide/16 v9, -0x1

    .line 32
    invoke-interface {v5, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v8, "dntr"

    .line 33
    invoke-interface {v5, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 34
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v10, "uptr"

    aget-wide v13, v2, v4

    invoke-interface {v5, v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v10, "dntr"

    aget-wide v13, v2, v3

    .line 35
    invoke-interface {v5, v10, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 36
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmp-long v5, v11, v6

    if-lez v5, :cond_4

    cmp-long v5, v8, v6

    if-gtz v5, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    aget-wide v13, v2, v3

    const/4 v5, 0x0

    sub-long v15, v13, v8

    aput-wide v15, v2, v3

    .line 41
    aget-wide v8, v2, v4

    const/4 v5, 0x0

    sub-long v13, v8, v11

    aput-wide v13, v2, v4

    .line 43
    aget-wide v8, v2, v3

    cmp-long v5, v8, v6

    if-lez v5, :cond_3

    aget-wide v8, v2, v4

    cmp-long v5, v8, v6

    if-gtz v5, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    aget-wide v5, v2, v3

    long-to-int v3, v5

    invoke-virtual {v1, v3}, Lu/aly/bm;->c(I)Lu/aly/bm;

    .line 46
    aget-wide v3, v2, v4

    long-to-int v2, v3

    invoke-virtual {v1, v2}, Lu/aly/bm;->a(I)Lu/aly/bm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    :goto_2
    return-object v0

    :catch_0
    const-string v1, "MobclickAgent"

    const-string v2, "sdk less than 2.2 has get no traffic"

    .line 50
    invoke-static {v1, v2}, Lu/aly/br;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "android.net.TrafficStats"

    .line 56
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUidRxBytes"

    const/4 v2, 0x1

    .line 57
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "getUidTxBytes"

    .line 58
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x2

    .line 64
    new-array v4, v4, [J

    .line 65
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 66
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v4, v2

    return-object v4
.end method
