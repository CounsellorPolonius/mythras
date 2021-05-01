.class Lu/aly/aq$d;
.super Ljava/lang/Object;
.source "ControlPolicy.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aq$1;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Lu/aly/aq$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/aq$c;
    .locals 2

    .line 269
    new-instance v0, Lu/aly/aq$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/aq$c;-><init>(Lu/aly/aq$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lu/aly/aq$d;->a()Lu/aly/aq$c;

    move-result-object v0

    return-object v0
.end method
