.class public Lu/aly/ca;
.super Ljava/lang/Object;
.source "LayoutMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    .line 11
    invoke-static {p0}, Lu/aly/bs;->a(Landroid/content/Context;)Lu/aly/bs;

    move-result-object p0

    const-string v0, "umeng_common_download_notification"

    invoke-virtual {p0, v0}, Lu/aly/bs;->d(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
