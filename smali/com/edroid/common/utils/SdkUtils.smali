.class public final Lcom/edroid/common/utils/SdkUtils;
.super Ljava/lang/Object;
.source "SdkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnlineInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getOnlineString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/edroid/common/utils/UmengUtils;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/edroid/common/utils/UmengUtils;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/edroid/common/utils/UmengUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
