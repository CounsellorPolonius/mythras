.class Lu/aly/bm$b;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bm$1;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Lu/aly/bm$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bm$a;
    .locals 2

    .line 259
    new-instance v0, Lu/aly/bm$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bm$a;-><init>(Lu/aly/bm$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lu/aly/bm$b;->a()Lu/aly/bm$a;

    move-result-object v0

    return-object v0
.end method
