.class Lcom/edroid/common/utils/HttpUtils$MyHostnameVerifier;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/edroid/common/utils/HttpUtils$1;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/edroid/common/utils/HttpUtils$MyHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
