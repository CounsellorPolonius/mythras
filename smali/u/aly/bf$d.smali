.class Lu/aly/bf$d;
.super Ljava/lang/Object;
.source "MiscInfo.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bf$1;)V
    .locals 0

    .line 795
    invoke-direct {p0}, Lu/aly/bf$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bf$c;
    .locals 2

    .line 797
    new-instance v0, Lu/aly/bf$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bf$c;-><init>(Lu/aly/bf$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 795
    invoke-virtual {p0}, Lu/aly/bf$d;->a()Lu/aly/bf$c;

    move-result-object v0

    return-object v0
.end method
