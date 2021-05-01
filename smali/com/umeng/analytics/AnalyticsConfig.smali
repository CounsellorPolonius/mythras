.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static ACTIVITY_DURATION_OPEN:Z = true

.field public static CATCH_EXCEPTION:Z = true

.field public static COMPRESS_DATA:Z = true

.field public static ENABLE_MEMORY_BUFFER:Z = true

.field public static GPU_RENDERER:Ljava/lang/String; = ""

.field public static GPU_VENDER:Ljava/lang/String; = ""

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:[D = null

.field public static kContinueSessionMillis:J = 0x7530L

.field public static mVerticalType:I = 0x0

.field public static mWrapperType:Ljava/lang/String; = null

.field public static mWrapperVersion:Ljava/lang/String; = null

.field public static sEncrypt:Z = false

.field public static sLatentWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEncrypt(Z)V
    .locals 0

    .line 22
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lu/aly/bq;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 41
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    invoke-static {p0}, Lu/aly/bq;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 48
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static getLocation()[D
    .locals 1

    .line 65
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 2

    .line 52
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "5.5.3.0"

    return-object v0

    :cond_0
    const-string v0, "5.5.3"

    return-object v0
.end method

.method public static setAppkey(Ljava/lang/String;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public static setLatencyWindow(J)V
    .locals 0

    long-to-int p0, p0

    mul-int/lit16 p0, p0, 0x3e8

    .line 78
    sput p0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    return-void
.end method

.method public static setLocation(DD)V
    .locals 2

    .line 69
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    .line 73
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 74
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    const/4 p1, 0x1

    aput-wide p2, p0, p1

    return-void
.end method
