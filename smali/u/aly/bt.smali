.class public Lu/aly/bt;
.super Lu/aly/bw;
.source "ReportClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bt$a;,
        Lu/aly/bt$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "u.aly.bt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lu/aly/bw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/bu;)Lu/aly/bv$a;
    .locals 1

    .line 41
    const-class v0, Lu/aly/bv;

    invoke-virtual {p0, p1, v0}, Lu/aly/bt;->a(Lu/aly/bx;Ljava/lang/Class;)Lu/aly/by;

    move-result-object p1

    check-cast p1, Lu/aly/bv;

    if-nez p1, :cond_0

    .line 42
    sget-object p1, Lu/aly/bv$a;->b:Lu/aly/bv$a;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lu/aly/bv;->a:Lu/aly/bv$a;

    :goto_0
    return-object p1
.end method

.method public a(Lu/aly/bu;Lu/aly/bt$a;)V
    .locals 2

    .line 62
    :try_start_0
    new-instance v0, Lu/aly/bt$b;

    invoke-direct {v0, p0, p1, p2}, Lu/aly/bt$b;-><init>(Lu/aly/bt;Lu/aly/bu;Lu/aly/bt$a;)V

    const/4 p1, 0x0

    .line 63
    new-array p1, p1, [Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lu/aly/bt$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    sget-object v0, Lu/aly/bt;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p2, :cond_0

    .line 67
    sget-object p1, Lu/aly/bv$a;->b:Lu/aly/bv$a;

    invoke-interface {p2, p1}, Lu/aly/bt$a;->a(Lu/aly/bv$a;)V

    :cond_0
    :goto_0
    return-void
.end method
