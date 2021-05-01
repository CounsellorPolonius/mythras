.class Lu/aly/an$b;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/an$1;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Lu/aly/an$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/an$a;
    .locals 2

    .line 266
    new-instance v0, Lu/aly/an$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/an$a;-><init>(Lu/aly/an$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lu/aly/an$b;->a()Lu/aly/an$a;

    move-result-object v0

    return-object v0
.end method
