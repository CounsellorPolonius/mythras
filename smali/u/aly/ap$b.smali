.class Lu/aly/ap$b;
.super Ljava/lang/Object;
.source "ClientStats.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ap$1;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lu/aly/ap$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/ap$a;
    .locals 2

    .line 304
    new-instance v0, Lu/aly/ap$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ap$a;-><init>(Lu/aly/ap$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lu/aly/ap$b;->a()Lu/aly/ap$a;

    move-result-object v0

    return-object v0
.end method
