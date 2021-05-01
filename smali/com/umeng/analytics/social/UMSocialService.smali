.class public abstract Lcom/umeng/analytics/social/UMSocialService;
.super Ljava/lang/Object;
.source "UMSocialService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/social/UMSocialService$a;,
        Lcom/umeng/analytics/social/UMSocialService$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Landroid/content/Context;Lcom/umeng/analytics/social/UMSocialService$b;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 45
    :try_start_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 46
    invoke-virtual {v3}, Lcom/umeng/analytics/social/UMPlatformData;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    new-instance p0, Lcom/umeng/analytics/social/a;

    const-string p1, "parameter is not valid."

    invoke-direct {p0, p1}, Lcom/umeng/analytics/social/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 51
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/umeng/analytics/social/f;->a(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)[Ljava/lang/String;

    move-result-object p0

    .line 52
    new-instance p2, Lcom/umeng/analytics/social/UMSocialService$a;

    invoke-direct {p2, p0, p1, p3}, Lcom/umeng/analytics/social/UMSocialService$a;-><init>([Ljava/lang/String;Lcom/umeng/analytics/social/UMSocialService$b;[Lcom/umeng/analytics/social/UMPlatformData;)V

    new-array p0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p0}, Lcom/umeng/analytics/social/UMSocialService$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/umeng/analytics/social/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    const-string p1, "MobclickAgent"

    const-string p2, ""

    .line 57
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    const-string p1, "MobclickAgent"

    const-string p2, "unable send event."

    .line 55
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public static varargs share(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0, p1, p2}, Lcom/umeng/analytics/social/UMSocialService;->a(Landroid/content/Context;Lcom/umeng/analytics/social/UMSocialService$b;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    return-void
.end method

.method public static varargs share(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, v0, v0, p1}, Lcom/umeng/analytics/social/UMSocialService;->a(Landroid/content/Context;Lcom/umeng/analytics/social/UMSocialService$b;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    return-void
.end method
