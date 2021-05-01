.class public Lu/aly/bv;
.super Lu/aly/by;
.source "ReportResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bv$a;
    }
.end annotation


# instance fields
.field public a:Lu/aly/bv$a;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1}, Lu/aly/by;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "ok"

    const-string v1, "status"

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ok"

    const-string v1, "success"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    sget-object p1, Lu/aly/bv$a;->b:Lu/aly/bv$a;

    iput-object p1, p0, Lu/aly/bv;->a:Lu/aly/bv$a;

    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    sget-object p1, Lu/aly/bv$a;->a:Lu/aly/bv$a;

    iput-object p1, p0, Lu/aly/bv;->a:Lu/aly/bv$a;

    :goto_1
    return-void
.end method
