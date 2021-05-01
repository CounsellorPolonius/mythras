.class Lu/aly/bc$d;
.super Ljava/lang/Object;
.source "InstantMsg.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bc$1;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Lu/aly/bc$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bc$c;
    .locals 2

    .line 566
    new-instance v0, Lu/aly/bc$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bc$c;-><init>(Lu/aly/bc$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lu/aly/bc$d;->a()Lu/aly/bc$c;

    move-result-object v0

    return-object v0
.end method
