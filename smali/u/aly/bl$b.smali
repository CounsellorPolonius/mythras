.class Lu/aly/bl$b;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bl$1;)V
    .locals 0

    .line 526
    invoke-direct {p0}, Lu/aly/bl$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bl$a;
    .locals 2

    .line 528
    new-instance v0, Lu/aly/bl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bl$a;-><init>(Lu/aly/bl$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lu/aly/bl$b;->a()Lu/aly/bl$a;

    move-result-object v0

    return-object v0
.end method
