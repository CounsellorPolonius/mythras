.class Lu/aly/bj$d;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bj$1;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lu/aly/bj$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bj$c;
    .locals 2

    .line 395
    new-instance v0, Lu/aly/bj$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bj$c;-><init>(Lu/aly/bj$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lu/aly/bj$d;->a()Lu/aly/bj$c;

    move-result-object v0

    return-object v0
.end method
